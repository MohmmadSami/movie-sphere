const Review = require('../models/Review');
const User = require('../models/User');

// @route   POST /api/reviews/add
// @desc    Add a review for a movie
// @access  Private
exports.addReview = async (req, res, next) => {
  try {
    const { movieId, rating, review } = req.body;

    if (!movieId || !rating || !review) {
      return res.status(400).json({
        success: false,
        message: 'Movie ID, rating, and review text are required',
      });
    }

    if (rating < 0 || rating > 10) {
      return res.status(400).json({
        success: false,
        message: 'Rating must be between 0 and 10',
      });
    }

    // Check if review already exists
    let existingReview = await Review.findOne({ movieId, userId: req.userId });
    if (existingReview) {
      return res.status(400).json({
        success: false,
        message: 'You have already reviewed this movie',
      });
    }

    // Create new review
    const newReview = new Review({
      movieId,
      userId: req.userId,
      rating,
      review,
    });

    await newReview.save();

    // Populate user info
    await newReview.populate('userId', 'name avatar');

    res.status(201).json({
      success: true,
      message: 'Review added successfully',
      review: newReview,
    });
  } catch (error) {
    next(error);
  }
};

// @route   GET /api/reviews/movie/:movieId
// @desc    Get reviews for a movie
// @access  Public
exports.getMovieReviews = async (req, res, next) => {
  try {
    const { movieId } = req.params;
    const { page = 1, limit = 10 } = req.query;

    const skip = (page - 1) * limit;

    const reviews = await Review.find({ movieId })
      .populate('userId', 'name avatar')
      .sort({ createdAt: -1 })
      .skip(skip)
      .limit(parseInt(limit));

    const total = await Review.countDocuments({ movieId });
    const avgRating = await Review.aggregate([
      { $match: { movieId: parseInt(movieId) } },
      { $group: { _id: null, average: { $avg: '$rating' } } },
    ]);

    res.status(200).json({
      success: true,
      count: reviews.length,
      total,
      totalPages: Math.ceil(total / limit),
      page: parseInt(page),
      averageRating: avgRating.length > 0 ? avgRating[0].average : 0,
      reviews,
    });
  } catch (error) {
    next(error);
  }
};

// @route   GET /api/reviews/user/:userId
// @desc    Get user's reviews
// @access  Public
exports.getUserReviews = async (req, res, next) => {
  try {
    const { userId } = req.params;
    const { page = 1, limit = 10 } = req.query;

    const skip = (page - 1) * limit;

    const reviews = await Review.find({ userId })
      .populate('userId', 'name avatar')
      .sort({ createdAt: -1 })
      .skip(skip)
      .limit(parseInt(limit));

    const total = await Review.countDocuments({ userId });

    res.status(200).json({
      success: true,
      count: reviews.length,
      total,
      totalPages: Math.ceil(total / limit),
      page: parseInt(page),
      reviews,
    });
  } catch (error) {
    next(error);
  }
};

// @route   DELETE /api/reviews/:reviewId
// @desc    Delete a review
// @access  Private
exports.deleteReview = async (req, res, next) => {
  try {
    const { reviewId } = req.params;

    const review = await Review.findById(reviewId);

    if (!review) {
      return res.status(404).json({
        success: false,
        message: 'Review not found',
      });
    }

    // Check if user is the review author
    if (review.userId.toString() !== req.userId.toString()) {
      return res.status(403).json({
        success: false,
        message: 'You do not have permission to delete this review',
      });
    }

    await Review.findByIdAndDelete(reviewId);

    res.status(200).json({
      success: true,
      message: 'Review deleted successfully',
    });
  } catch (error) {
    next(error);
  }
};

// @route   GET /api/reviews/:reviewId
// @desc    Get a single review
// @access  Public
exports.getReview = async (req, res, next) => {
  try {
    const { reviewId } = req.params;

    const review = await Review.findById(reviewId).populate('userId', 'name avatar');

    if (!review) {
      return res.status(404).json({
        success: false,
        message: 'Review not found',
      });
    }

    res.status(200).json({
      success: true,
      review,
    });
  } catch (error) {
    next(error);
  }
};

