require('dotenv').config();
const express = require('express');
const cors = require('cors');
const path = require('path');
const fs = require('fs');

// Import database connection
const connectDB = require('./config/database');

// Import routes
const authRoutes = require('./routes/auth');
const moviesRoutes = require('./routes/movies');
const watchlistRoutes = require('./routes/watchlist');
const favoritesRoutes = require('./routes/favorites');
const reviewsRoutes = require('./routes/reviews');
const historyRoutes = require('./routes/history');

// Import middleware
const errorHandler = require('./middleware/errorHandler');

// Initialize Express app
const app = express();

// Create uploads directory if it doesn't exist
const uploadsDir = path.join(__dirname, '../uploads');
if (!fs.existsSync(uploadsDir)) {
  fs.mkdirSync(uploadsDir, { recursive: true });
}

// Middleware
const corsOptions = {
  origin: function (origin, callback) {
    // Allow requests with no origin (like mobile apps or curl requests)
    if (!origin) return callback(null, true);

    // In development, allow all origins
    if (process.env.NODE_ENV === 'development') {
      callback(null, true);
    } else {
      // In production, use the CORS_ORIGIN from .env
      const allowedOrigins = (process.env.CORS_ORIGIN || 'http://localhost:3000').split(',');
      if (allowedOrigins.includes(origin)) {
        callback(null, true);
      } else {
        callback(new Error('Not allowed by CORS'));
      }
    }
  },
  credentials: true,
  methods: ['GET', 'POST', 'PUT', 'DELETE', 'PATCH', 'OPTIONS'],
  allowedHeaders: ['Content-Type', 'Authorization'],
};

app.use(cors(corsOptions));
app.options('*', cors(corsOptions)); // Enable preflight for all routes
app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use('/uploads', express.static(path.join(__dirname, '../uploads')));

// Routes
// Root endpoint
app.get('/', (req, res) => {
  res.status(200).json({
    success: true,
    message: '🎬 MovieSphere API Server',
    version: '1.0.0',
    endpoints: {
      health: '/health',
      auth: '/api/auth',
      movies: '/api/movies',
      watchlist: '/api/watchlist',
      favorites: '/api/favorites',
      reviews: '/api/reviews',
      history: '/api/history',
    },
    apiUrl: 'http://localhost:5000/api',
  });
});

app.use('/api/auth', authRoutes);
app.use('/api/movies', moviesRoutes);
app.use('/api/watchlist', watchlistRoutes);
app.use('/api/favorites', favoritesRoutes);
app.use('/api/reviews', reviewsRoutes);
app.use('/api/history', historyRoutes);

// Health check endpoint
app.get('/health', (req, res) => {
  res.status(200).json({
    success: true,
    message: 'MovieSphere API is running',
    timestamp: new Date(),
  });
});

// 404 handler
app.use((req, res) => {
  res.status(404).json({
    success: false,
    message: 'Route not found',
  });
});

// Error handling middleware
app.use(errorHandler);

// Connect to database and start server
const PORT = process.env.PORT || 5000;

const startServer = async () => {
  try {
    await connectDB();

    app.listen(PORT, () => {
      console.log(`
╔════════════════════════════════════════╗
║     🎬 MovieSphere API Server 🎬       ║
╚════════════════════════════════════════╝
Server running on port: ${PORT}
Environment: ${process.env.NODE_ENV || 'development'}
API URL: http://localhost:${PORT}
      `);
    });
  } catch (error) {
    console.error('Failed to start server:', error);
    process.exit(1);
  }
};

startServer();

module.exports = app;

