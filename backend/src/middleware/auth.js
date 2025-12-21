const { verifyToken } = require('../config/jwt');
const User = require('../models/User');

const authenticate = async (req, res, next) => {
  try {
    let token = req.headers.authorization;

    if (!token) {
      return res.status(401).json({
        success: false,
        message: 'No token provided. Authorization denied.',
      });
    }

    // Remove "Bearer " prefix
    if (token.startsWith('Bearer ')) {
      token = token.slice(7);
    }

    const decoded = verifyToken(token);

    if (!decoded) {
      return res.status(401).json({
        success: false,
        message: 'Invalid or expired token.',
      });
    }

    const user = await User.findById(decoded.id);

    if (!user) {
      return res.status(404).json({
        success: false,
        message: 'User not found.',
      });
    }

    req.user = user;
    req.userId = user._id;
    next();
  } catch (error) {
    return res.status(401).json({
      success: false,
      message: 'Authentication failed.',
      error: error.message,
    });
  }
};

module.exports = {
  authenticate,
};

