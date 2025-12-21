const express = require('express');
const watchlistController = require('../controllers/watchlistController');
const { authenticate } = require('../middleware/auth');

const router = express.Router();

// All watchlist routes require authentication
router.use(authenticate);

// @route   POST /api/watchlist/add
// @desc    Add movie to watchlist
// @access  Private
router.post('/add', watchlistController.addToWatchlist);

// @route   GET /api/watchlist
// @desc    Get user's watchlist
// @access  Private
router.get('/', watchlistController.getWatchlist);

// @route   DELETE /api/watchlist/remove/:movieId
// @desc    Remove movie from watchlist
// @access  Private
router.delete('/remove/:movieId', watchlistController.removeFromWatchlist);

// @route   GET /api/watchlist/check/:movieId
// @desc    Check if movie is in watchlist
// @access  Private
router.get('/check/:movieId', watchlistController.checkWatchlist);

module.exports = router;

