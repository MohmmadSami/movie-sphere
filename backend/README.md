# MovieSphere Backend API

A production-ready REST API for a full-featured movie discovery and watchlist application built with Node.js, Express, and MongoDB.

## 🚀 Features

- **Authentication**: JWT-based authentication with secure password hashing
- **Movie Discovery**: Integration with TMDB API for trending, popular, and search functionality
- **Watchlist Management**: Add/remove movies from personalized watchlist
- **Favorites**: Mark favorite actors and directors
- **Reviews & Ratings**: Community ratings and reviews system
- **Watch History**: Automatically track recently viewed movies
- **Personalized Recommendations**: AI-powered movie suggestions based on user preferences
- **User Profiles**: Avatar upload and profile management

## 📋 Prerequisites

- Node.js (v14 or higher)
- MongoDB (local or MongoDB Atlas)
- TMDB API Key (get from https://www.themoviedb.org/settings/api)

## 🔧 Installation

1. **Clone the repository**
```bash
cd backend
```

2. **Install dependencies**
```bash
npm install
```

3. **Create .env file**
```bash
cp .env .env
```

4. **Configure environment variables**
Edit `.env` and fill in your values:
```
PORT=5000
NODE_ENV=development
MONGODB_URI=mongodb://localhost:27017/movie_sphere
JWT_SECRET=your_secret_key_here
JWT_EXPIRE=7d
TMDB_API_KEY=your_tmdb_api_key
TMDB_BASE_URL=https://api.themoviedb.org/3
MAX_FILE_SIZE=5242880
CORS_ORIGIN=http://localhost:3000
```

5. **Start the server**

For development:
```bash
npm run dev
```

For production:
```bash
npm start
```

The API will be available at `http://localhost:5000`

## 📚 API Documentation

### Base URL
```
http://localhost:5000/api
```

### Authentication Endpoints

#### Register
```
POST /auth/register
Content-Type: application/json

{
  "name": "John Doe",
  "email": "john@example.com",
  "password": "password123"
}

Response:
{
  "success": true,
  "token": "jwt_token_here",
  "user": {
    "id": "user_id",
    "name": "John Doe",
    "email": "john@example.com",
    "avatar": null
  }
}
```

#### Login
```
POST /auth/login
Content-Type: application/json

{
  "email": "john@example.com",
  "password": "password123"
}

Response:
{
  "success": true,
  "token": "jwt_token_here",
  "user": { ... }
}
```

#### Get Profile
```
GET /auth/profile
Authorization: Bearer {token}

Response:
{
  "success": true,
  "user": {
    "id": "user_id",
    "name": "John Doe",
    "email": "john@example.com",
    "avatar": "avatar_url",
    "watchlistCount": 5,
    "favoriteActorsCount": 2,
    "favoriteDirectorsCount": 1
  }
}
```

#### Update Profile
```
PUT /auth/update
Authorization: Bearer {token}
Content-Type: multipart/form-data

Form Data:
- name: "New Name" (optional)
- avatar: [image_file] (optional)

Response:
{
  "success": true,
  "message": "Profile updated successfully",
  "user": { ... }
}
```

### Movies Endpoints

#### Get Trending Movies
```
GET /movies/trending?timeWindow=week
```

#### Search Movies
```
GET /movies/search?query=inception&page=1
```

#### Get Movie Details
```
GET /movies/550

Response includes:
- Basic movie info
- Trailer video
- Cast (top 10 actors)
- Director
- Recommendations
- Similar movies
```

#### Get Popular Movies
```
GET /movies/popular?page=1
```

#### Get Upcoming Movies
```
GET /movies/upcoming?page=1
```

#### Get Movies by Genre
```
GET /movies/genre/28?page=1
```

### Watchlist Endpoints

#### Add to Watchlist
```
POST /watchlist/add
Authorization: Bearer {token}
Content-Type: application/json

{
  "movieId": 550,
  "title": "Fight Club",
  "posterPath": "/poster_path.jpg"
}

Response:
{
  "success": true,
  "message": "Movie added to watchlist",
  "watchlistCount": 6
}
```

#### Get Watchlist
```
GET /watchlist
Authorization: Bearer {token}

Response:
{
  "success": true,
  "count": 5,
  "movies": [
    {
      "id": 550,
      "title": "Fight Club",
      "overview": "...",
      "releaseDate": "1999-10-15",
      "voteAverage": 8.8,
      "posterUrl": "...",
      "backdropUrl": "..."
    }
  ]
}
```

#### Remove from Watchlist
```
DELETE /watchlist/remove/550
Authorization: Bearer {token}

Response:
{
  "success": true,
  "message": "Movie removed from watchlist",
  "watchlistCount": 4
}
```

#### Check if Movie in Watchlist
```
GET /watchlist/check/550
Authorization: Bearer {token}

Response:
{
  "success": true,
  "isInWatchlist": true
}
```

### Favorites Endpoints

#### Add Favorite Actor
```
POST /favorites/add-actor
Authorization: Bearer {token}
Content-Type: application/json

{
  "actorId": 500,
  "name": "Leonardo DiCaprio",
  "profilePath": "/profile_path.jpg"
}

Response:
{
  "success": true,
  "message": "Actor added to favorites",
  "count": 3
}
```

#### Add Favorite Director
```
POST /favorites/add-director
Authorization: Bearer {token}
Content-Type: application/json

{
  "directorId": 400,
  "name": "Christopher Nolan",
  "profilePath": "/profile_path.jpg"
}

Response:
{
  "success": true,
  "message": "Director added to favorites",
  "count": 2
}
```

#### Get Favorites List
```
GET /favorites/list
Authorization: Bearer {token}

Response:
{
  "success": true,
  "favoriteActors": [
    {
      "actorId": 500,
      "name": "Leonardo DiCaprio",
      "profilePath": "/profile_path.jpg"
    }
  ],
  "favoriteDirectors": [
    {
      "directorId": 400,
      "name": "Christopher Nolan",
      "profilePath": "/profile_path.jpg"
    }
  ]
}
```

#### Remove Favorite Actor
```
DELETE /favorites/remove-actor/500
Authorization: Bearer {token}
```

#### Remove Favorite Director
```
DELETE /favorites/remove-director/400
Authorization: Bearer {token}
```

### Reviews Endpoints

#### Add Review
```
POST /reviews/add
Authorization: Bearer {token}
Content-Type: application/json

{
  "movieId": 550,
  "rating": 9,
  "review": "Amazing movie! The plot twist was incredible."
}

Response:
{
  "success": true,
  "message": "Review added successfully",
  "review": {
    "_id": "review_id",
    "movieId": 550,
    "userId": {
      "_id": "user_id",
      "name": "John Doe",
      "avatar": "avatar_url"
    },
    "rating": 9,
    "review": "Amazing movie!",
    "createdAt": "2024-01-15T10:30:00Z"
  }
}
```

#### Get Movie Reviews
```
GET /reviews/movie/550?page=1&limit=10

Response:
{
  "success": true,
  "count": 5,
  "total": 45,
  "totalPages": 5,
  "page": 1,
  "averageRating": 8.2,
  "reviews": [ ... ]
}
```

#### Get User Reviews
```
GET /reviews/user/{userId}?page=1&limit=10
```

#### Delete Review
```
DELETE /reviews/{reviewId}
Authorization: Bearer {token}

Response:
{
  "success": true,
  "message": "Review deleted successfully"
}
```

### History & Recommendations Endpoints

#### Add to Watch History
```
POST /history/add
Authorization: Bearer {token}
Content-Type: application/json

{
  "movieId": 550,
  "title": "Fight Club",
  "posterPath": "/poster_path.jpg"
}

Response:
{
  "success": true,
  "message": "Movie added to history",
  "historyCount": 10
}
```

#### Get Recently Viewed
```
GET /history/list?limit=20
Authorization: Bearer {token}

Response:
{
  "success": true,
  "count": 10,
  "movies": [
    {
      "movieId": 550,
      "title": "Fight Club",
      "posterPath": "/poster_path.jpg",
      "viewedAt": "2024-01-15T10:30:00Z"
    }
  ]
}
```

#### Clear Watch History
```
DELETE /history/clear
Authorization: Bearer {token}
```

#### Get Recommendations
```
GET /history/recommendations
Authorization: Bearer {token}

Response:
{
  "success": true,
  "message": "Personalized recommendations",
  "movies": [
    {
      "id": 550,
      "title": "Fight Club",
      "posterPath": "/poster_path.jpg",
      "posterUrl": "...",
      "voteAverage": 8.8
    }
  ]
}
```

## 🗄️ Database Schema

### User Model
```javascript
{
  name: String,
  email: String (unique),
  password: String (hashed),
  avatar: String (URL),
  watchlist: [
    {
      movieId: Number,
      addedAt: Date
    }
  ],
  favoriteActors: [
    {
      actorId: Number,
      name: String,
      profilePath: String
    }
  ],
  favoriteDirectors: [
    {
      directorId: Number,
      name: String,
      profilePath: String
    }
  ],
  recentlyViewed: [
    {
      movieId: Number,
      title: String,
      posterPath: String,
      viewedAt: Date
    }
  ],
  createdAt: Date,
  updatedAt: Date
}
```

### Review Model
```javascript
{
  movieId: Number,
  userId: ObjectId (ref: User),
  rating: Number (0-10),
  review: String,
  createdAt: Date,
  updatedAt: Date
}
```

## 🔐 Security Features

- JWT authentication with expiration
- Password hashing with bcryptjs
- CORS protection
- Input validation with express-validator
- File upload restrictions
- Error handling middleware

## 📦 Dependencies

- **express**: Web framework
- **mongoose**: MongoDB ODM
- **bcryptjs**: Password hashing
- **jsonwebtoken**: JWT authentication
- **axios**: HTTP client for TMDB API
- **cors**: CORS middleware
- **multer**: File upload handling
- **express-validator**: Input validation
- **dotenv**: Environment configuration

## 🐛 Error Handling

All endpoints return a consistent error format:

```json
{
  "success": false,
  "message": "Error description",
  "error": "Additional error details (if available)"
}
```

## 📝 Environment Variables

```
PORT=5000
NODE_ENV=development
MONGODB_URI=mongodb://localhost:27017/movie_sphere
JWT_SECRET=super_secret_key_change_this
JWT_EXPIRE=7d
TMDB_API_KEY=your_api_key
TMDB_BASE_URL=https://api.themoviedb.org/3
MAX_FILE_SIZE=5242880
CORS_ORIGIN=http://localhost:3000
UPLOAD_DIR=./uploads
```

## 🚀 Deployment

For production deployment:

1. Set `NODE_ENV=production`
2. Use a strong `JWT_SECRET`
3. Configure `MONGODB_URI` to MongoDB Atlas or hosted instance
4. Set appropriate `CORS_ORIGIN`
5. Use environment variables securely
6. Consider adding rate limiting and caching

## 📧 Support

For issues or questions, please create an issue in the repository.

## 📄 License

MIT License - feel free to use this project for personal or commercial purposes.

---

**Built with ❤️ by MovieSphere Team**

