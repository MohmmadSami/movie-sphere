const express = require('express');
const historyController = require('../controllers/historyController');
const { authenticate } = require('../middleware/auth');

const router = express.Router();

// All history routes require authentication
router.use(authenticate);

// @route   POST /api/history/add
// @desc    Add movie to recently viewed
// @access  Private
router.post('/add', historyController.addToHistory);

// @route   GET /api/history/list
// @desc    Get user's recently viewed movies
// @access  Private
router.get('/list', historyController.getHistory);

// @route   DELETE /api/history/clear
// @desc    Clear user's watch history
// @access  Private
router.delete('/clear', historyController.clearHistory);

// @route   GET /api/recommendations
// @desc    Get personalized recommendations
// @access  Private
router.get('/recommendations', historyController.getRecommendations);

module.exports = router;

