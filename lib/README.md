# MovieSphere - Flutter Frontend

A production-ready Flutter 3.x application for movie discovery, watchlist management, and community reviews.

## 🚀 Features

### User Authentication
- Register & Login with JWT authentication
- Secure token storage using flutter_secure_storage
- Automatic session management

### Movie Discovery
- Trending movies carousel with smooth animations
- Popular & upcoming movies sections
- Advanced movie search functionality
- Movie details with cast, trailers, and recommendations
- Genre-based filtering

### Watchlist Management
- Add/remove movies from watchlist
- Persistent watchlist storage
- Quick access from multiple screens

### User Profiles
- User profile with avatar management
- Watchlist count and statistics
- Favorite actors and directors tracking
- Recently viewed movies history

### Themes & Customization
- Light/Dark mode toggle
- System theme support
- Smooth theme transitions
- Persistent theme preferences

### Architecture
- Clean MVVM architecture
- Riverpod for state management
- GoRouter for navigation
- Freezed for immutable models
- Dio for HTTP requests
- Local caching with cached_network_image

## 📋 Prerequisites

- Flutter 3.10+
- Dart 3.0+
- Android SDK 21+ / iOS 11.0+

## 🔧 Installation

### 1. Clone the repository
```bash
cd movie_sphere
```

### 2. Install dependencies
```bash
flutter pub get
```

### 3. Generate code
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

### 4. Update API Configuration

Create or update `.env` file in the root with:
```
API_BASE_URL=http://your-backend-url:5000/api
TMDB_API_KEY=your_tmdb_api_key
```

### 5. Run the app

```bash
# Development
flutter run

# With specific device
flutter run -d device_id

# Release
flutter run --release
```

## 📁 Project Structure

```
lib/
├── core/
│   ├── constants/
│   │   └── constants.dart          # API routes, strings, numbers
│   ├── errors/
│   │   └── failures.dart           # Error classes
│   ├── theme/
│   │   └── app_theme.dart          # Light/Dark theme definitions
│   └── utils/
│       ├── date_time_utils.dart    # Date formatting helpers
│       ├── logger.dart             # Logging utility
│       └── validation_utils.dart   # Form validation
│
├── data/
│   ├── datasources/                # Data sources (API, local storage)
│   ├── models/
│   │   ├── movie_model.dart        # Movie data models
│   │   ├── user_model.dart         # User data models
│   │   └── review_model.dart       # Review data models
│   └── repositories/               # Repository implementations
│
├── domain/
│   ├── entities/                   # Domain entities
│   └── repositories/               # Abstract repository interfaces
│
├── presentation/
│   ├── providers/
│   │   ├── auth_provider.dart      # Authentication state
│   │   ├── movies_provider.dart    # Movie state
│   │   ├── reviews_provider.dart   # Review state
│   │   └── theme_provider.dart     # Theme state
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── login_screen.dart
│   │   ├── register_screen.dart
│   │   ├── search_screen.dart
│   │   ├── movie_details_screen.dart
│   │   ├── watchlist_screen.dart
│   │   ├── profile_screen.dart
│   │   └── settings_screen.dart
│   └── widgets/
│       ├── movie_card.dart         # Movie card components
│       └── loading_widget.dart      # Loading/Error widgets
│
├── services/
│   └── api_service.dart            # API client with interceptors
│
└── main.dart                        # App entry point
```

## 🎯 Core Screens

### Home Screen
- Trending movies carousel with PageView
- Popular movies horizontal scroll
- Upcoming movies section
- Refresh functionality

### Search Screen
- Real-time search with debouncing
- Grid view of results
- Movie card display with ratings

### Movie Details Screen
- Full movie information
- Cast and crew display
- Trailer links
- Recommendations carousel
- Add/Remove from watchlist
- Automatic view tracking

### Watchlist Screen
- All saved movies display
- Quick remove functionality
- Empty state handling
- Navigation to movie details

### Profile Screen
- User information display
- Avatar display/upload
- Statistics (watchlist, actors, directors)
- Favorite actors/directors section
- Recently viewed movies
- Settings and logout

### Settings Screen
- Theme selection (Light/Dark/System)
- About app information
- Privacy policy and terms
- Help and feedback
- Bug reporting

## 🔐 Authentication Flow

1. User registers with email & password
2. Credentials sent to backend
3. Backend returns JWT token
4. Token securely stored in flutter_secure_storage
5. Token automatically added to all API requests
6. Token refreshed on session expiry (to be implemented)

## 🎨 Theme System

The app supports both light and dark themes with:
- Custom color schemes
- Typography hierarchy
- Input field styling
- Button themes
- Card and surface customization

### Switching Themes
```dart
ref.read(themeProvider.notifier).setThemeMode(ThemeMode.dark);
```

## 🌐 API Integration

### API Service Features
- Automatic JWT injection
- Request/Response logging
- Error handling middleware
- Timeout configuration
- Retry logic (optional)

### Example API Call
```dart
final movies = await apiService.getTrendingMovies();
```

## 📱 Responsive Design

The app is fully responsive with:
- Adaptive layouts for different screen sizes
- FlexibleSpace AppBars
- CustomScrollView for efficient rendering
- GridView and ListView optimizations

## 🚀 Performance Optimizations

- Image caching with cached_network_image
- Lazy loading with FutureProvider.autoDispose
- Widget rebuilding optimization with Riverpod
- Custom scroll physics
- Memory-efficient list rendering

## 🔄 State Management with Riverpod

### Providers Used

**FutureProvider** - For async data
```dart
final trendingMoviesProvider = FutureProvider.autoDispose<List<MovieModel>>((ref) async {
  return apiService.getTrendingMovies();
});
```

**StateNotifierProvider** - For mutable state
```dart
final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(apiService);
});
```

**StateProvider** - For simple state
```dart
final searchQueryProvider = StateProvider<String>((ref) => '');
```

## 🧪 Testing

To run tests:
```bash
flutter test
```

## 📦 Dependencies

### State Management
- flutter_riverpod: 2.4.0
- riverpod_annotation: 2.1.0

### Networking
- dio: 5.3.1

### Storage & Security
- flutter_secure_storage: 9.0.0
- shared_preferences: 2.2.2

### UI & Assets
- cached_network_image: 3.3.0
- shimmer: 3.0.0
- flutter_spinkit: 5.2.0
- smooth_page_indicator: 1.1.0

### Navigation
- go_router: 11.0.0

### Serialization
- freezed_annotation: 2.4.1
- json_serializable: 6.7.1

### Code Generation
- build_runner: 2.4.6
- riverpod_generator: 2.3.0
- freezed: 2.4.1

## 🐛 Debugging

### Enable Logging
```dart
import 'package:movie_sphere/core/utils/logger.dart';

logDebug('Debug message');
logInfo('Info message');
logWarning('Warning message');
logError('Error message');
```

### Riverpod DevTools
The app supports Riverpod DevTools for state inspection (in development mode).

## 📝 Environment Variables

Create a `.env` file in the project root:
```
API_BASE_URL=http://localhost:5000/api
TMDB_API_KEY=your_api_key
```

Then load in main.dart:
```dart
dotenv.env.addAll({
  'API_BASE_URL': 'http://localhost:5000/api',
  'TMDB_API_KEY': 'your_key',
});
```

## 🚀 Deployment

### Android
```bash
flutter build apk --release
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

### Web
```bash
flutter build web --release
```

## 🤝 Contributing

Contributions are welcome! Please follow:
- Clean code principles
- MVVM architecture
- Meaningful commit messages
- Test coverage

## 📄 License

MIT License - feel free to use this project.

## 📞 Support

For issues or questions, please create an issue in the repository.

---

**Built with ❤️ using Flutter 3.x**
