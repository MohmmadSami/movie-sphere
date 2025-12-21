const User = require('../models/User');
const tmdbService = require('../services/tmdbService');

// @route   POST /api/history/add
// @desc    Add movie to recently viewed
// @access  Private
exports.addToHistory = async (req, res, next) => {
  try {
    const { movieId, title, posterPath } = req.body;

    if (!movieId) {
      return res.status(400).json({
        success: false,
        message: 'Movie ID is required',
      });
    }

    const user = await User.findById(req.userId);

    // Remove if already exists (to update the timestamp)
    user.recentlyViewed = user.recentlyViewed.filter(v => v.movieId !== movieId);

    // Add to beginning of recently viewed
    user.recentlyViewed.unshift({
      movieId,
      title,
      posterPath,
      viewedAt: new Date(),
    });

    // Keep only last 20 recently viewed
    if (user.recentlyViewed.length > 20) {
      user.recentlyViewed = user.recentlyViewed.slice(0, 20);
    }

    await user.save();

    res.status(201).json({
      success: true,
      message: 'Movie added to history',
      historyCount: user.recentlyViewed.length,
    });
  } catch (error) {
    next(error);
  }
};

// @route   GET /api/history/list
// @desc    Get user's recently viewed movies
// @access  Private
exports.getHistory = async (req, res, next) => {
  try {
    const { limit = 20 } = req.query;
    const user = await User.findById(req.userId);

    const recentlyViewed = user.recentlyViewed.slice(0, parseInt(limit));

    res.status(200).json({
      success: true,
      count: recentlyViewed.length,
      movies: recentlyViewed,
    });
  } catch (error) {
    next(error);
  }
};

// @route   DELETE /api/history/clear
// @desc    Clear user's watch history
// @access  Private
exports.clearHistory = async (req, res, next) => {
  try {
    const user = await User.findByIdAndUpdate(
      req.userId,
      { recentlyViewed: [] },
      { new: true }
    );

    res.status(200).json({
      success: true,
      message: 'Watch history cleared',
    });
  } catch (error) {
    next(error);
  }
};

// @route   GET /api/recommendations
// @desc    Get personalized recommendations based on favorites and watchlist
// @access  Private
exports.getRecommendations = async (req, res, next) => {
  try {
    const user = await User.findById(req.userId);

    // If user has no favorites, return trending movies
    if (user.favoriteActors.length === 0 && user.favoriteDirectors.length === 0) {
      const trending = await tmdbService.getTrendingMovies();
      const movies = trending.results.slice(0, 12).map(movie => ({
        id: movie.id,
        title: movie.title,
        posterPath: movie.poster_path,
        posterUrl: tmdbService.getImageUrl(movie.poster_path),
        voteAverage: movie.vote_average,
      }));

      return res.status(200).json({
        success: true,
        message: 'Trending movies (no favorites yet)',
        movies,
      });
    }

    // Get recommendations based on various factors
    // For simplicity, we'll fetch popular movies and filter
    const popular = await tmdbService.getPopularMovies();

    // Filter out movies already in watchlist
    const watchlistIds = user.watchlist.map(w => w.movieId);
    const recommendations = popular.results
      .filter(m => !watchlistIds.includes(m.id))
      .slice(0, 12)
      .map(movie => ({
        id: movie.id,
        title: movie.title,
        posterPath: movie.poster_path,
        posterUrl: tmdbService.getImageUrl(movie.poster_path),
        voteAverage: movie.vote_average,
      }));

    res.status(200).json({
      success: true,
      message: 'Personalized recommendations',
      movies: recommendations,
    });
  } catch (error) {
    next(error);
  }
};

