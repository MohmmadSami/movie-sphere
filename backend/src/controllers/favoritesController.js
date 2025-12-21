const User = require('../models/User');

// @route   POST /api/favorites/add-actor
// @desc    Add actor to favorites
// @access  Private
exports.addFavoriteActor = async (req, res, next) => {
  try {
    const { actorId, name, profilePath } = req.body;

    if (!actorId || !name) {
      return res.status(400).json({
        success: false,
        message: 'Actor ID and name are required',
      });
    }

    const user = await User.findById(req.userId);

    // Check if actor already in favorites
    const actorIndex = user.favoriteActors.findIndex(a => a.actorId === actorId);
    if (actorIndex !== -1) {
      return res.status(400).json({
        success: false,
        message: 'Actor already in favorites',
      });
    }

    // Add to favorites
    user.favoriteActors.push({
      actorId,
      name,
      profilePath,
    });

    await user.save();

    res.status(201).json({
      success: true,
      message: 'Actor added to favorites',
      count: user.favoriteActors.length,
    });
  } catch (error) {
    next(error);
  }
};

// @route   POST /api/favorites/add-director
// @desc    Add director to favorites
// @access  Private
exports.addFavoriteDirector = async (req, res, next) => {
  try {
    const { directorId, name, profilePath } = req.body;

    if (!directorId || !name) {
      return res.status(400).json({
        success: false,
        message: 'Director ID and name are required',
      });
    }

    const user = await User.findById(req.userId);

    // Check if director already in favorites
    const directorIndex = user.favoriteDirectors.findIndex(d => d.directorId === directorId);
    if (directorIndex !== -1) {
      return res.status(400).json({
        success: false,
        message: 'Director already in favorites',
      });
    }

    // Add to favorites
    user.favoriteDirectors.push({
      directorId,
      name,
      profilePath,
    });

    await user.save();

    res.status(201).json({
      success: true,
      message: 'Director added to favorites',
      count: user.favoriteDirectors.length,
    });
  } catch (error) {
    next(error);
  }
};

// @route   DELETE /api/favorites/remove-actor/:actorId
// @desc    Remove actor from favorites
// @access  Private
exports.removeFavoriteActor = async (req, res, next) => {
  try {
    const { actorId } = req.params;

    const user = await User.findById(req.userId);

    user.favoriteActors = user.favoriteActors.filter(a => a.actorId !== parseInt(actorId));

    await user.save();

    res.status(200).json({
      success: true,
      message: 'Actor removed from favorites',
      count: user.favoriteActors.length,
    });
  } catch (error) {
    next(error);
  }
};

// @route   DELETE /api/favorites/remove-director/:directorId
// @desc    Remove director from favorites
// @access  Private
exports.removeFavoriteDirector = async (req, res, next) => {
  try {
    const { directorId } = req.params;

    const user = await User.findById(req.userId);

    user.favoriteDirectors = user.favoriteDirectors.filter(d => d.directorId !== parseInt(directorId));

    await user.save();

    res.status(200).json({
      success: true,
      message: 'Director removed from favorites',
      count: user.favoriteDirectors.length,
    });
  } catch (error) {
    next(error);
  }
};

// @route   GET /api/favorites/list
// @desc    Get user's favorite actors and directors
// @access  Private
exports.getFavoritesList = async (req, res, next) => {
  try {
    const user = await User.findById(req.userId);

    res.status(200).json({
      success: true,
      favoriteActors: user.favoriteActors,
      favoriteDirectors: user.favoriteDirectors,
    });
  } catch (error) {
    next(error);
  }
};

