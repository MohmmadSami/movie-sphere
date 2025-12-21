# 🎬 MovieSphere - Complete Application

A full-featured movie discovery and watchlist application built with **Flutter 3.x**, **Node.js/Express**, and **MongoDB**.

## 📱 Features

### Authentication & User Management
- ✅ User Registration & Login (JWT-based)
- ✅ Secure password hashing (bcryptjs)
- ✅ User profile management
- ✅ Avatar upload support

### Movie Discovery
- ✅ Trending movies carousel
- ✅ Popular & upcoming movies
- ✅ Advanced search functionality
- ✅ Movie details with cast, videos, recommendations
- ✅ TMDB API integration for rich data

### Watchlist & Favorites
- ✅ Add/remove movies from watchlist
- ✅ Favorite actors tracking
- ✅ Favorite directors tracking
- ✅ Personalized recommendations

### Reviews & Ratings
- ✅ Write and view movie reviews
- ✅ Rate movies (1-10 stars)
- ✅ View average ratings
- ✅ Delete own reviews

### User Experience
- ✅ Dark/Light theme support
- ✅ Recently viewed movies tracking
- ✅ Smooth animations & transitions
- ✅ Responsive UI design
- ✅ Image caching with cached_network_image
- ✅ Loading states & error handling

## 🛠 Tech Stack

### Frontend (Flutter 3.x)
- **State Management**: Riverpod
- **HTTP Client**: Dio
- **Navigation**: GoRouter
- **UI Components**: Material Design
- **Storage**: SharedPreferences, SecureStorage
- **Code Generation**: Freezed, JSON Serializable

### Backend (Node.js + Express)
- **Server**: Express.js
- **Database**: MongoDB with Mongoose
- **Authentication**: JWT (jsonwebtoken)
- **Password Hashing**: bcryptjs
- **External API**: TMDB API
- **File Upload**: Multer
- **CORS**: Enabled for frontend

### Database (MongoDB)
- **User Profiles**: Name, email, password, avatar
- **Watchlist**: Movie IDs and metadata
- **Reviews**: Movie ratings and comments
- **Favorites**: Actor and director IDs
- **History**: Recently viewed movies

## 📋 Project Structure

```
movie_sphere/
├── lib/                          # Flutter app
│   ├── main.dart                # App entry point
│   ├── core/
│   │   ├── config/              # App configuration
│   │   ├── constants/           # Constants & API endpoints
│   │   ├── errors/              # Error handling
│   │   ├── theme/               # Dark/Light theme
│   │   └── utils/               # Utilities & helpers
│   ├── data/
│   │   ├── datasources/         # Data sources (API, local DB)
│   │   ├── models/              # Data models (Freezed)
│   │   └── repositories/        # Repository pattern
│   ├── domain/
│   │   ├── entities/            # Business entities
│   │   └── repositories/        # Repository interfaces
│   ├── presentation/
│   │   ├── providers/           # Riverpod state providers
│   │   ├── screens/             # UI screens
│   │   └── widgets/             # Reusable widgets
│   └── services/
│       └── api_service.dart     # API service layer
├── backend/                      # Node.js backend
│   ├── src/
│   │   ├── server.js            # Express app setup
│   │   ├── config/              # Configuration files
│   │   ├── controllers/         # Request handlers
│   │   ├── models/              # Mongoose schemas
│   │   ├── routes/              # API routes
│   │   ├── services/            # Business logic
│   │   └── middleware/          # Custom middleware
│   ├── package.json             # Dependencies
│   └── .env                      # Environment variables
├── android/                      # Android native code
├── ios/                          # iOS native code
├── web/                          # Web platform config
├── pubspec.yaml                 # Flutter dependencies
└── README.md                     # This file
```

## 🚀 Quick Start

### Prerequisites
- Flutter 3.x installed
- Node.js 14+ installed
- MongoDB (local or Atlas)
- TMDB API key (free at https://www.themoviedb.org/settings/api)

### 1. Backend Setup

```bash
cd backend

# Create .env file with:
# - MONGODB_URI
# - TMDB_API_KEY
# - JWT_SECRET
# See COMPLETE_SETUP_GUIDE.md for full config

npm install
npm run dev
```

**Expected output:**
```
✅ MongoDB connected successfully
✅ Server running on port 5000
```

### 2. Frontend Setup

```bash
# In a new terminal
flutter pub get
flutter run -d chrome
```

**Expected result:**
- Chrome opens with the app
- App connects to backend at http://localhost:5000/api
- You can register, login, and use the app

## 📖 Documentation

- **[COMPLETE_SETUP_GUIDE.md](./COMPLETE_SETUP_GUIDE.md)** - Detailed setup instructions
- **[BACKEND_SETUP.md](./BACKEND_SETUP.md)** - Backend configuration guide
- **[BACKEND_RUNNING.md](./BACKEND_RUNNING.md)** - Backend status and monitoring
- **[NETWORK_SETUP.md](./NETWORK_SETUP.md)** - Network configuration for different platforms
- **[API_DEBUG.md](./API_DEBUG.md)** - API troubleshooting guide

## 🔑 API Endpoints

### Authentication
```
POST   /api/auth/register        # Register new user
POST   /api/auth/login           # Login user
GET    /api/auth/profile         # Get user profile (auth required)
PUT    /api/auth/update          # Update user profile (auth required)
```

### Movies
```
GET    /api/movies/trending      # Get trending movies
GET    /api/movies/search        # Search movies
GET    /api/movies/popular       # Get popular movies
GET    /api/movies/upcoming      # Get upcoming movies
GET    /api/movies/:id           # Get movie details with recommendations
```

### Watchlist
```
POST   /api/watchlist/add        # Add movie to watchlist (auth required)
DELETE /api/watchlist/remove/:id # Remove from watchlist (auth required)
GET    /api/watchlist            # Get user's watchlist (auth required)
GET    /api/watchlist/check/:id  # Check if movie is in watchlist
```

### Reviews
```
POST   /api/reviews/add          # Add movie review (auth required)
GET    /api/reviews/movie/:id    # Get reviews for a movie
DELETE /api/reviews/:id          # Delete own review (auth required)
```

### Favorites
```
POST   /api/favorites/add-actor              # Add favorite actor (auth required)
POST   /api/favorites/add-director          # Add favorite director (auth required)
DELETE /api/favorites/remove-actor/:id      # Remove favorite actor
DELETE /api/favorites/remove-director/:id   # Remove favorite director
GET    /api/favorites/list                  # Get user's favorites
```

### History & Recommendations
```
POST   /api/history/add          # Add to recently viewed (auth required)
GET    /api/history/list         # Get recently viewed movies
GET    /api/history/recommendations # Get personalized recommendations
```

## 🎨 UI Screens

1. **Login Screen** - User authentication
2. **Register Screen** - New user signup
3. **Home Screen** - Trending movies carousel + popular/upcoming
4. **Search Screen** - Advanced movie search
5. **Movie Details** - Full movie info with cast, trailer, reviews
6. **Watchlist Screen** - User's saved movies
7. **Profile Screen** - User info and stats
8. **Settings Screen** - Theme toggle and preferences

## 🔐 Security Features

- ✅ JWT authentication with token storage in secure storage
- ✅ Password hashing with bcryptjs (10 rounds)
- ✅ CORS protection
- ✅ Input validation on frontend and backend
- ✅ Protected API routes with auth middleware
- ✅ Secure token refresh mechanism

## 📦 Dependencies

### Flutter Key Packages
- `flutter_riverpod` - State management
- `dio` - HTTP client
- `go_router` - Navigation
- `freezed_annotation` - Code generation
- `cached_network_image` - Image caching
- `flutter_secure_storage` - Secure token storage
- `shared_preferences` - User preferences

### Node.js Key Packages
- `express` - Web framework
- `mongoose` - MongoDB ODM
- `jsonwebtoken` - JWT auth
- `bcryptjs` - Password hashing
- `axios` - HTTP client for TMDB
- `multer` - File uploads
- `dotenv` - Environment configuration
- `cors` - CORS middleware

## 🧪 Testing

### Backend Testing
```bash
cd backend
# Use curl or Postman to test endpoints
curl http://localhost:5000/api/movies/trending
```

### Frontend Testing
```bash
# In Flutter app, navigate through screens
# Register -> Login -> Browse movies -> Add to watchlist -> View reviews
```

## 🚢 Deployment

### Backend Deployment (Heroku, Railway, etc.)
1. Update `.env` with production values
2. Ensure MongoDB Atlas is configured
3. Deploy Node.js server
4. Update CORS_ORIGIN with frontend URL

### Frontend Deployment (Vercel, Netlify, etc.)
1. Build web app: `flutter build web`
2. Update API URL in `app_config.dart` to production backend
3. Deploy `build/web` directory

## 📝 License

MIT License - See LICENSE file for details

## 👥 Contributing

1. Fork the repository
2. Create feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open Pull Request

## 🐛 Troubleshooting

### "Connection error" in Flutter
- Backend not running? See [BACKEND_SETUP.md](./BACKEND_SETUP.md)
- Port conflict? Check with `netstat -ano | findstr :5000`
- CORS issue? Update backend `.env` CORS_ORIGIN

### MongoDB connection failed
- MongoDB not running? Start with `mongod` or MongoDB service
- Wrong connection string? Check `.env` MONGODB_URI

### TMDB API errors
- Invalid API key? Get from https://www.themoviedb.org/settings/api
- API rate limit? Wait a few minutes and retry

For detailed troubleshooting, see [COMPLETE_SETUP_GUIDE.md](./COMPLETE_SETUP_GUIDE.md)

## 📞 Support

- Check documentation files in project root
- Review API_DEBUG.md for API issues
- Check COMPLETE_SETUP_GUIDE.md for setup help
- Verify logs in backend and Flutter console

---

**Happy movieing! 🎬🍿**

