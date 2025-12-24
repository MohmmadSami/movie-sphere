require('dotenv').config();
const express = require('express');
const cors = require('cors');
const path = require('path');
const fs = require('fs');

// Database
const connectDB = require('./config/database');

// Routes
const authRoutes = require('./routes/auth');
const moviesRoutes = require('./routes/movies');
const watchlistRoutes = require('./routes/watchlist');
const favoritesRoutes = require('./routes/favorites');
const reviewsRoutes = require('./routes/reviews');
const historyRoutes = require('./routes/history');

// Middleware
const errorHandler = require('./middleware/errorHandler');

// Initialize app
const app = express();

/* =========================
   DATABASE CONNECTION
========================= */
connectDB();

/* =========================
   UPLOADS (TEMP ON VERCEL)
========================= */
const uploadsDir = path.join(__dirname, '../uploads');
if (!fs.existsSync(uploadsDir)) {
  fs.mkdirSync(uploadsDir, { recursive: true });
}

/* =========================
   MIDDLEWARE
========================= */
app.use(
  cors({
    origin: '*', // ✅ allow Flutter, web, mobile
    credentials: true,
    methods: ['GET', 'POST', 'PUT', 'DELETE', 'PATCH', 'OPTIONS'],
    allowedHeaders: ['Content-Type', 'Authorization'],
  })
);

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use('/uploads', express.static(path.join(__dirname, '../uploads')));

/* =========================
   ROOT
========================= */
app.get('/', (req, res) => {
  res.status(200).json({
    success: true,
    message: '🎬 MovieSphere API running on Vercel',
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
  });
});

/* =========================
   API ROUTES
========================= */
app.use('/api/auth', authRoutes);
app.use('/api/movies', moviesRoutes);
app.use('/api/watchlist', watchlistRoutes);
app.use('/api/favorites', favoritesRoutes);
app.use('/api/reviews', reviewsRoutes);
app.use('/api/history', historyRoutes);

/* =========================
   HEALTH CHECK
========================= */
app.get('/health', (req, res) => {
  res.status(200).json({
    success: true,
    message: 'MovieSphere API is healthy',
    timestamp: new Date(),
  });
});

/* =========================
   404 HANDLER
========================= */
app.use((req, res) => {
  res.status(404).json({
    success: false,
    message: 'Route not found',
  });
});

/* =========================
   ERROR HANDLER
========================= */
app.use(errorHandler);

/* =========================
   EXPORT (NO listen)
========================= */
module.exports = app;
