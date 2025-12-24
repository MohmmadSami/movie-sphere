require('dotenv').config();
const express = require('express');
const cors = require('cors');

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

const app = express();

/* =========================
   DATABASE (SERVERLESS SAFE)
========================= */
let isConnected = false;

const dbConnect = async () => {
  if (!isConnected) {
    await connectDB();
    isConnected = true;
  }
};

/* =========================
   MIDDLEWARE
========================= */
app.use(
  cors({
    origin: '*',
    methods: ['GET', 'POST', 'PUT', 'DELETE', 'PATCH', 'OPTIONS'],
    allowedHeaders: ['Content-Type', 'Authorization'],
  })
);

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

/* =========================
   FAVICON (PREVENT 404 LOGS)
========================= */
app.get('/favicon.ico', (req, res) => res.status(204).end());

/* =========================
   ROOT
========================= */
app.get('/', async (req, res) => {
  try {
    await dbConnect();
    res.status(200).json({
      success: true,
      message: '🎬 MovieSphere API running on Vercel',
      version: '1.0.0',
    });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

/* =========================
   API ROUTES (DB SAFE)
========================= */
app.use('/api/auth', async (req, res, next) => {
  await dbConnect();
  next();
}, authRoutes);

app.use('/api/movies', async (req, res, next) => {
  await dbConnect();
  next();
}, moviesRoutes);

app.use('/api/watchlist', async (req, res, next) => {
  await dbConnect();
  next();
}, watchlistRoutes);

app.use('/api/favorites', async (req, res, next) => {
  await dbConnect();
  next();
}, favoritesRoutes);

app.use('/api/reviews', async (req, res, next) => {
  await dbConnect();
  next();
}, reviewsRoutes);

app.use('/api/history', async (req, res, next) => {
  await dbConnect();
  next();
}, historyRoutes);

/* =========================
   HEALTH
========================= */
app.get('/health', async (req, res) => {
  try {
    await dbConnect();
    res.json({
      success: true,
      message: 'MovieSphere API is healthy',
      timestamp: new Date(),
    });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
});

/* =========================
   404
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
   EXPORT (NO LISTEN)
========================= */
module.exports = app;
