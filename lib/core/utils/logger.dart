import 'package:logger/logger.dart';

final logger = Logger();

void logDebug(String message) {
  logger.d(message);
}

void logInfo(String message) {
  logger.i(message);
}

void logWarning(String message) {
  logger.w(message);
}

void logError(String message, [dynamic error, StackTrace? stackTrace]) {
  logger.e(message, error: error, stackTrace: stackTrace);
}

