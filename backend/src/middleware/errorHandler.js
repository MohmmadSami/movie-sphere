const errorHandler = (err, req, res, next) => {
  console.error('='.repeat(60));
  console.error('ERROR:', err.message);
  console.error('Stack:', err.stack);

  // If it's an Axios error from TMDB API
  if (err.response) {
    console.error('API Response Status:', err.response.status);
    console.error('API Response Data:', err.response.data);
  }
  console.error('='.repeat(60));

  // Mongoose validation error
  if (err.name === 'ValidationError') {
    const messages = Object.values(err.errors).map(e => e.message);
    return res.status(400).json({
      success: false,
      message: 'Validation error',
      errors: messages,
    });
  }

  // Mongoose cast error
  if (err.name === 'CastError') {
    return res.status(400).json({
      success: false,
      message: 'Invalid ID format',
    });
  }

  // Mongoose duplicate key error
  if (err.code === 11000) {
    const field = Object.keys(err.keyValue)[0];
    return res.status(400).json({
      success: false,
      message: `${field} already exists`,
    });
  }

  // Axios/API errors
  if (err.response?.status) {
    return res.status(err.response.status).json({
      success: false,
      message: `External API Error: ${err.message}`,
      details: err.response.data,
    });
  }

  // Default error
  res.status(err.statusCode || 500).json({
    success: false,
    message: err.message || 'Internal server error',
  });
};

module.exports = errorHandler;

