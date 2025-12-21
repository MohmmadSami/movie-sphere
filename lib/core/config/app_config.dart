import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;

/// Application configuration class
/// Handles environment-specific settings
class AppConfig {
  static String get apiBaseUrl {
    // For web platform, always use localhost
    if (kIsWeb) {
      return 'http://localhost:5000/api';
    }

    // For Android emulator: 10.0.2.2 is the host machine's localhost
    // For iOS simulator: localhost works directly
    // For physical device: use actual backend server URL

    if (Platform.isAndroid) {
      return 'http://10.0.2.2:5000/api';
    } else if (Platform.isIOS) {
      return 'http://localhost:5000/api';
    } else {
      // For other platforms (desktop, etc.)
      return 'http://localhost:5000/api';
    }
  }

  static String get tmdbImageBaseUrl {
    return 'https://image.tmdb.org/t/p/w500';
  }

  static const Duration connectTimeout = Duration(seconds: 15);
  static const Duration receiveTimeout = Duration(seconds: 15);
}

