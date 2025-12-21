const User = require('../models/User');
const tmdbService = require('../services/tmdbService');

// @route   POST /api/watchlist/add
// @desc    Add movie to watchlist
// @access  Private
exports.addToWatchlist = async (req, res, next) => {
  try {
    const { movieId, title, posterPath } = req.body;

    if (!movieId) {
      return res.status(400).json({
        success: false,
        message: 'Movie ID is required',
      });
    }

    const user = await User.findById(req.userId);

    // Check if movie already in watchlist
    const movieIndex = user.watchlist.findIndex(w => w.movieId === movieId);
    if (movieIndex !== -1) {
      return res.status(400).json({
        success: false,
        message: 'Movie already in watchlist',
      });
    }

    // Add to watchlist
    user.watchlist.push({
      movieId,
    });

    await user.save();

    res.status(201).json({
      success: true,
      message: 'Movie added to watchlist',
      watchlistCount: user.watchlist.length,
    });
  } catch (error) {
    next(error);
  }
};

// @route   DELETE /api/watchlist/remove/:movieId
// @desc    Remove movie from watchlist
// @access  Private
exports.removeFromWatchlist = async (req, res, next) => {
  try {
    const { movieId } = req.params;

    const user = await User.findById(req.userId);

    // Remove from watchlist
    user.watchlist = user.watchlist.filter(w => w.movieId !== parseInt(movieId));

    await user.save();

    res.status(200).json({
      success: true,
      message: 'Movie removed from watchlist',
      watchlistCount: user.watchlist.length,
    });
  } catch (error) {
    next(error);
  }
};

// @route   GET /api/watchlist
// @desc    Get user's watchlist
// @access  Private
exports.getWatchlist = async (req, res, next) => {
  try {
    console.log(`[WATCHLIST] Fetching watchlist for user: ${req.userId}`);

    const user = await User.findById(req.userId);
    if (!user) {
      return res.status(404).json({
        success: false,
        message: 'User not found',
      });
    }

    console.log(`[WATCHLIST] User has ${user.watchlist.length} movies in watchlist`);

    const movieIds = user.watchlist.map(w => w.movieId);

    // Fetch movie details from TMDB for each movie in watchlist
    const movies = await Promise.all(
      movieIds.map(async (id) => {
        try {
          const movie = await tmdbService.getMovieDetails(id);
          return {
            id: movie.id,
            title: movie.title,
            overview: movie.overview || '',
            release_date: movie.release_date || '',
            vote_average: movie.vote_average || 0,
            vote_count: movie.vote_count || 0,
            poster_path: movie.poster_path,
            posterUrl: tmdbService.getImageUrl(movie.poster_path),
            backdrop_path: movie.backdrop_path,
            backdropUrl: tmdbService.getImageUrl(movie.backdrop_path),
          };
        } catch (error) {
          console.error(`[WATCHLIST] Error fetching movie ${id}:`, error.message);
          return null;
        }
      })
    );

    // Filter out null values (failed fetches)
    const validMovies = movies.filter(m => m !== null);

    console.log(`[WATCHLIST] Successfully fetched ${validMovies.length} watchlist movies`);

    res.status(200).json({
      success: true,
      count: validMovies.length,
      movies: validMovies,
    });
  } catch (error) {
    console.error('[WATCHLIST] Error:', error.message);
    next(error);
  }
};

// @route   GET /api/watchlist/check/:movieId
// @desc    Check if movie is in watchlist
// @access  Private
exports.checkWatchlist = async (req, res, next) => {
  try {
    const { movieId } = req.params;
    const user = await User.findById(req.userId);

    const isInWatchlist = user.watchlist.some(w => w.movieId === parseInt(movieId));

    res.status(200).json({
      success: true,
      isInWatchlist,
    });
  } catch (error) {
    next(error);
  }
};

