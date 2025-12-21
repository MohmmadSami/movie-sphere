const tmdbService = require('../services/tmdbService');

// @route   GET /api/movies/trending
// @desc    Get trending movies
// @access  Public
exports.getTrendingMovies = async (req, res, next) => {
  try {
    const { timeWindow = 'week' } = req.query;
    const data = await tmdbService.getTrendingMovies(timeWindow);

    // Transform image URLs
    const movies = data.results.map(movie => ({
      ...movie,
      posterUrl: tmdbService.getImageUrl(movie.poster_path),
      backdropUrl: tmdbService.getImageUrl(movie.backdrop_path),
    }));

    res.status(200).json({
      success: true,
      total: data.total_results,
      page: data.page,
      totalPages: data.total_pages,
      movies,
    });
  } catch (error) {
    next(error);
  }
};

// @route   GET /api/movies/search
// @desc    Search movies
// @access  Public
exports.searchMovies = async (req, res, next) => {
  try {
    const { query, page = 1 } = req.query;

    if (!query) {
      return res.status(400).json({
        success: false,
        message: 'Search query is required',
      });
    }

    const data = await tmdbService.searchMovies(query, page);

    // Transform image URLs
    const movies = data.results.map(movie => ({
      ...movie,
      posterUrl: tmdbService.getImageUrl(movie.poster_path),
      backdropUrl: tmdbService.getImageUrl(movie.backdrop_path),
    }));

    res.status(200).json({
      success: true,
      total: data.total_results,
      page: data.page,
      totalPages: data.total_pages,
      movies,
    });
  } catch (error) {
    next(error);
  }
};

// @route   GET /api/movies/:id
// @desc    Get movie details with cast, trailer, recommendations
// @access  Public
exports.getMovieDetails = async (req, res, next) => {
  try {
    const { id } = req.params;

    console.log(`[MOVIE DETAILS] Fetching details for movie ID: ${id}`);

    const movie = await tmdbService.getMovieDetails(id);

    // Extract videos (trailers, clips, etc.)
    const videos = movie.videos?.results || [];
    const trailer = videos.find(v => v.type === 'Trailer') || videos[0] || null;

    // Extract cast (top 10)
    const cast = movie.credits?.cast?.slice(0, 10).map(actor => ({
      id: actor.id,
      name: actor.name,
      character: actor.character,
      profile_path: actor.profile_path,
      profileUrl: tmdbService.getImageUrl(actor.profile_path),
    })) || [];

    // Extract recommendations with full movie data
    const recommendations = movie.recommendations?.results?.slice(0, 6).map(rec => ({
      id: rec.id,
      title: rec.title,
      overview: rec.overview || '',
      release_date: rec.release_date || '',
      vote_average: rec.vote_average || 0,
      vote_count: rec.vote_count || 0,
      poster_path: rec.poster_path,
      posterUrl: tmdbService.getImageUrl(rec.poster_path),
      backdrop_path: rec.backdrop_path,
      backdropUrl: tmdbService.getImageUrl(rec.backdrop_path),
    })) || [];

    // Extract similar movies with full movie data
    const similar = movie.similar?.results?.slice(0, 6).map(sim => ({
      id: sim.id,
      title: sim.title,
      overview: sim.overview || '',
      release_date: sim.release_date || '',
      vote_average: sim.vote_average || 0,
      vote_count: sim.vote_count || 0,
      poster_path: sim.poster_path,
      posterUrl: tmdbService.getImageUrl(sim.poster_path),
      backdrop_path: sim.backdrop_path,
      backdropUrl: tmdbService.getImageUrl(sim.backdrop_path),
    })) || [];

    const director = movie.credits?.crew?.find(c => c.job === 'Director');

    console.log(`[MOVIE DETAILS] Successfully fetched movie: ${movie.title}`);

    // Build response that matches MovieDetailsModel structure
    const responseData = {
      movie: {
        id: movie.id,
        title: movie.title,
        overview: movie.overview,
        release_date: movie.release_date,
        vote_average: movie.vote_average,
        vote_count: movie.vote_count,
        runtime: movie.runtime,
        genres: movie.genres || [],
        poster_path: movie.poster_path,
        posterUrl: tmdbService.getImageUrl(movie.poster_path),
        backdrop_path: movie.backdrop_path,
        backdropUrl: tmdbService.getImageUrl(movie.backdrop_path),
        tagline: movie.tagline,
        status: movie.status,
        budget: movie.budget,
        revenue: movie.revenue,
        homepage: movie.homepage,
      },
      trailer: trailer ? {
        id: trailer.id,
        key: trailer.key,
        name: trailer.name,
        type: trailer.type,
        site: trailer.site,
        url: `https://www.youtube.com/embed/${trailer.key}`,
      } : null,
      cast,
      director: director ? {
        id: director.id,
        name: director.name,
      } : null,
      recommendations,
      similar,
    };

    res.status(200).json(responseData);
  } catch (error) {
    console.error('[MOVIE DETAILS] Error:', error.message);
    console.error('[MOVIE DETAILS] Full error:', error);
    next(error);
  }
};

// @route   GET /api/movies/popular
// @desc    Get popular movies
// @access  Public
exports.getPopularMovies = async (req, res, next) => {
  try {
    const { page = 1 } = req.query;
    const data = await tmdbService.getPopularMovies(page);

    const movies = data.results.map(movie => ({
      ...movie,
      posterUrl: tmdbService.getImageUrl(movie.poster_path),
      backdropUrl: tmdbService.getImageUrl(movie.backdrop_path),
    }));

    res.status(200).json({
      success: true,
      total: data.total_results,
      page: data.page,
      totalPages: data.total_pages,
      movies,
    });
  } catch (error) {
    next(error);
  }
};

// @route   GET /api/movies/upcoming
// @desc    Get upcoming movies
// @access  Public
exports.getUpcomingMovies = async (req, res, next) => {
  try {
    const { page = 1 } = req.query;
    const data = await tmdbService.getUpcomingMovies(page);

    const movies = data.results.map(movie => ({
      ...movie,
      posterUrl: tmdbService.getImageUrl(movie.poster_path),
      backdropUrl: tmdbService.getImageUrl(movie.backdrop_path),
    }));

    res.status(200).json({
      success: true,
      total: data.total_results,
      page: data.page,
      totalPages: data.total_pages,
      movies,
    });
  } catch (error) {
    next(error);
  }
};

// @route   GET /api/movies/genre/:genreId
// @desc    Get movies by genre
// @access  Public
exports.getMoviesByGenre = async (req, res, next) => {
  try {
    const { genreId } = req.params;
    const { page = 1 } = req.query;
    const data = await tmdbService.getMoviesByGenre(genreId, page);

    const movies = data.results.map(movie => ({
      ...movie,
      posterUrl: tmdbService.getImageUrl(movie.poster_path),
      backdropUrl: tmdbService.getImageUrl(movie.backdrop_path),
    }));

    res.status(200).json({
      success: true,
      total: data.total_results,
      page: data.page,
      totalPages: data.total_pages,
      movies,
    });
  } catch (error) {
    next(error);
  }
};

