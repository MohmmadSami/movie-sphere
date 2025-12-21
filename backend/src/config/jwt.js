const jwt = require('jsonwebtoken');

// Generate JWT Token
const generateToken = (userId) => {
  return jwt.sign({ id: userId }, process.env.JWT_SECRET, {
    expiresIn: process.env.JWT_EXPIRE || '7d',
  });
};

// Verify JWT Token
const verifyToken = (token) => {
  try {
    const decoded = jwt.verify(token, process.env.JWT_SECRET);
    return decoded;
  } catch (error) {
    return null;
  }
};

// Decode JWT Token (without verification)
const decodeToken = (token) => {
  try {
    const decoded = jwt.decode(token);
    return decoded;
  } catch (error) {
    return null;
  }
};

module.exports = {
  generateToken,
  verifyToken,
  decodeToken,
};

