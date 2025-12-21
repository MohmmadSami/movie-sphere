const express = require('express');
const favoritesController = require('../controllers/favoritesController');
const { authenticate } = require('../middleware/auth');

const router = express.Router();

// All favorites routes require authentication
router.use(authenticate);

// @route   POST /api/favorites/add-actor
// @desc    Add actor to favorites
// @access  Private
router.post('/add-actor', favoritesController.addFavoriteActor);

// @route   POST /api/favorites/add-director
// @desc    Add director to favorites
// @access  Private
router.post('/add-director', favoritesController.addFavoriteDirector);

// @route   DELETE /api/favorites/remove-actor/:actorId
// @desc    Remove actor from favorites
// @access  Private
router.delete('/remove-actor/:actorId', favoritesController.removeFavoriteActor);

// @route   DELETE /api/favorites/remove-director/:directorId
// @desc    Remove director from favorites
// @access  Private
router.delete('/remove-director/:directorId', favoritesController.removeFavoriteDirector);

// @route   GET /api/favorites/list
// @desc    Get user's favorites
// @access  Private
router.get('/list', favoritesController.getFavoritesList);

module.exports = router;

