const express = require('express');
const reviewsController = require('../controllers/reviewsController');
const { authenticate } = require('../middleware/auth');

const router = express.Router();

// @route   POST /api/reviews/add
// @desc    Add a review
// @access  Private
router.post('/add', authenticate, reviewsController.addReview);

// @route   GET /api/reviews/movie/:movieId
// @desc    Get reviews for a movie
// @access  Public
router.get('/movie/:movieId', reviewsController.getMovieReviews);

// @route   GET /api/reviews/user/:userId
// @desc    Get user's reviews
// @access  Public
router.get('/user/:userId', reviewsController.getUserReviews);

// @route   GET /api/reviews/:reviewId
// @desc    Get a single review
// @access  Public
router.get('/:reviewId', reviewsController.getReview);

// @route   DELETE /api/reviews/:reviewId
// @desc    Delete a review
// @access  Private
router.delete('/:reviewId', authenticate, reviewsController.deleteReview);

module.exports = router;

