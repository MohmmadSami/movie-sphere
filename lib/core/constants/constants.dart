import 'package:movie_sphere/core/config/app_config.dart';

/// API Constants
class ApiConstants {
  // Use AppConfig to get the correct base URL for the current platform
  static String get baseUrl => AppConfig.apiBaseUrl;
  static String get tmdbBaseUrl => AppConfig.tmdbImageBaseUrl;

  // Auth endpoints
  static const String authRegister = '/auth/register';
  static const String authLogin = '/auth/login';
  static const String authProfile = '/auth/profile';
  static const String authUpdate = '/auth/update';

  // Movie endpoints
  static const String moviesTrending = '/movies/trending';
  static const String moviesSearch = '/movies/search';
  static const String moviesPopular = '/movies/popular';
  static const String moviesUpcoming = '/movies/upcoming';
  static const String moviesDetails = '/movies';
  static const String moviesByGenre = '/movies/genre';

  // Watchlist endpoints
  static const String watchlistAdd = '/watchlist/add';
  static const String watchlistGet = '/watchlist';
  static const String watchlistRemove = '/watchlist/remove';
  static const String watchlistCheck = '/watchlist/check';

  // Favorites endpoints
  static const String favoritesAddActor = '/favorites/add-actor';
  static const String favoritesAddDirector = '/favorites/add-director';
  static const String favoritesList = '/favorites/list';
  static const String favoritesRemoveActor = '/favorites/remove-actor';
  static const String favoritesRemoveDirector = '/favorites/remove-director';

  // Reviews endpoints
  static const String reviewsAdd = '/reviews/add';
  static const String reviewsGet = '/reviews/movie';
  static const String reviewsDelete = '/reviews';
  static const String reviewsUser = '/reviews/user';

  // History endpoints
  static const String historyAdd = '/history/add';
  static const String historyGet = '/history/list';
  static const String historyClear = '/history/clear';
  static const String recommendations = '/history/recommendations';

  // Timeout
  static const Duration connectTimeout = Duration(seconds: 15);
  static const Duration receiveTimeout = Duration(seconds: 15);
}

/// String Constants
class AppStrings {
  // App
  static const String appName = 'MovieSphere';

  // Auth
  static const String login = 'Login';
  static const String register = 'Register';
  static const String logout = 'Logout';
  static const String email = 'Email';
  static const String password = 'Password';
  static const String name = 'Name';
  static const String confirmPassword = 'Confirm Password';
  static const String forgotPassword = 'Forgot Password?';
  static const String dontHaveAccount = "Don't have an account?";
  static const String alreadyHaveAccount = 'Already have an account?';
  static const String signUpHere = 'Sign up here';
  static const String signInHere = 'Sign in here';
  static const String invalidEmail = 'Please enter a valid email';
  static const String passwordTooShort = 'Password must be at least 6 characters';
  static const String passwordsMustMatch = 'Passwords must match';
  static const String allFieldsRequired = 'All fields are required';
  static const String loginSuccess = 'Login successful';
  static const String registerSuccess = 'Registration successful';

  // Movies
  static const String trending = 'Trending';
  static const String popular = 'Popular';
  static const String upcoming = 'Upcoming';
  static const String search = 'Search movies';
  static const String noResults = 'No movies found';
  static const String movieDetails = 'Movie Details';
  static const String cast = 'Cast';
  static const String director = 'Director';
  static const String recommendations = 'Recommendations';
  static const String similarMovies = 'Similar Movies';

  // Watchlist
  static const String watchlist = 'Watchlist';
  static const String addToWatchlist = 'Add to Watchlist';
  static const String removeFromWatchlist = 'Remove from Watchlist';
  static const String addedToWatchlist = 'Added to watchlist';
  static const String removedFromWatchlist = 'Removed from watchlist';
  static const String emptyWatchlist = 'Your watchlist is empty';

  // Reviews
  static const String reviews = 'Reviews';
  static const String writeReview = 'Write a Review';
  static const String rating = 'Rating';
  static const String review = 'Review';
  static const String submitReview = 'Submit Review';
  static const String deleteReview = 'Delete Review';
  static const String reviewDeleted = 'Review deleted';

  // Profile
  static const String profile = 'Profile';
  static const String editProfile = 'Edit Profile';
  static const String updateProfile = 'Update Profile';
  static const String profileUpdated = 'Profile updated successfully';
  static const String changeAvatar = 'Change Avatar';
  static const String favoriteActors = 'Favorite Actors';
  static const String favoriteDirectors = 'Favorite Directors';
  static const String recentlyViewed = 'Recently Viewed';
  static const String noFavoriteActors = 'No favorite actors yet';
  static const String noFavoriteDirectors = 'No favorite directors yet';
  static const String noRecentlyViewed = 'No recently viewed movies';

  // Settings
  static const String settings = 'Settings';
  static const String darkMode = 'Dark Mode';
  static const String lightMode = 'Light Mode';
  static const String theme = 'Theme';
  static const String language = 'Language';
  static const String about = 'About';
  static const String version = 'Version';
  static const String privacyPolicy = 'Privacy Policy';
  static const String termsOfService = 'Terms of Service';

  // General
  static const String loading = 'Loading...';
  static const String error = 'Error';
  static const String success = 'Success';
  static const String retry = 'Retry';
  static const String cancel = 'Cancel';
  static const String delete = 'Delete';
  static const String edit = 'Edit';
  static const String save = 'Save';
  static const String close = 'Close';
  static const String ok = 'OK';
  static const String goBack = 'Go Back';
  static const String home = 'Home';
  static const String addActor = 'Add to Favorites';
  static const String removeActor = 'Remove from Favorites';
}

/// Duration Constants
class AppDurations {
  static const Duration animationDuration = Duration(milliseconds: 300);
  static const Duration shortAnimationDuration = Duration(milliseconds: 150);
  static const Duration longAnimationDuration = Duration(milliseconds: 500);
  static const Duration toastDuration = Duration(seconds: 3);
  static const Duration dialogDuration = Duration(seconds: 2);
}

/// Numeric Constants
class AppNumbers {
  static const int itemsPerPage = 20;
  static const int trendingMoviesCount = 10;
  static const double borderRadius = 12.0;
  static const double smallBorderRadius = 8.0;
  static const double largeBorderRadius = 16.0;
  static const double padding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;
  static const double smallPaddingValue = 4.0;
}

