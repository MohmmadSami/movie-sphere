/// Application configuration class
/// Handles environment-specific settings
class AppConfig {
  static String get apiBaseUrl {
    // Allow overriding via --dart-define=API_BASE_URL=...
    const envUrl = String.fromEnvironment('API_BASE_URL');
    if (envUrl.isNotEmpty) {
      return envUrl;
    }
    return 'https://movie-sphere-theta.vercel.app/api';
  }

  static String get tmdbApiKey {
    return const String.fromEnvironment('TMDB_API_KEY');
  }

  static String get tmdbImageBaseUrl {
    return 'https://image.tmdb.org/t/p/w500';
  }

  static const Duration connectTimeout = Duration(seconds: 15);
  static const Duration receiveTimeout = Duration(seconds: 15);
}
