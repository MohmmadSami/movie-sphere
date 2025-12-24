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
   DATABASE (SAFE FOR VERCEL)
========================= */
let isConnected = false;

async function dbConnect() {
  if (!isConnected) {
    await connectDB();
    isConnected = true;
  }
}

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
   ROOT
========================= */
app.get('/', async (req, res) => {
  await dbConnect();
  res.status(200).json({
    success: true,
    message: '🎬 MovieSphere API running on Vercel',
    version: '1.0.0',
  });
});

/* =========================
   API ROUTES
========================= */
app.use('/api/auth', async (req, res, next) => {
  await dbConnect();
  next();
}, authRoutes);

app.use('/api/movies', moviesRoutes);
app.use('/api/watchlist', watchlistRoutes);
app.use('/api/favorites', favoritesRoutes);
app.use('/api/reviews', reviewsRoutes);
app.use('/api/history', historyRoutes);

/* =========================
   HEALTH
========================= */
app.get('/health', async (req, res) => {
  await dbConnect();
  res.json({
    success: true,
    message: 'MovieSphere API is healthy',
    time: new Date(),
  });
});

/* =========================
   404
========================= */
app.use((req, res) => {
  res.status(404).json({ success: false, message: 'Route not found' });
});

/* =========================
   ERROR HANDLER
========================= */
app.use(errorHandler);

/* =========================
   EXPORT
========================= */
module.exports = app;
