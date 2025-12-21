const express = require('express');
const moviesController = require('../controllers/moviesController');

const router = express.Router();

// @route   GET /api/movies/trending
// @desc    Get trending movies
// @access  Public
router.get('/trending', moviesController.getTrendingMovies);

// @route   GET /api/movies/search
// @desc    Search movies
// @access  Public
router.get('/search', moviesController.searchMovies);

// @route   GET /api/movies/popular
// @desc    Get popular movies
// @access  Public
router.get('/popular', moviesController.getPopularMovies);

// @route   GET /api/movies/upcoming
// @desc    Get upcoming movies
// @access  Public
router.get('/upcoming', moviesController.getUpcomingMovies);

// @route   GET /api/movies/genre/:genreId
// @desc    Get movies by genre
// @access  Public
router.get('/genre/:genreId', moviesController.getMoviesByGenre);

// @route   GET /api/movies/:id
// @desc    Get movie details
// @access  Public
router.get('/:id', moviesController.getMovieDetails);

module.exports = router;

