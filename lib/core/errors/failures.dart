abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
}

class NetworkFailure extends Failure {
  NetworkFailure(String message) : super('No internet connection: $message');
}

class CacheFailure extends Failure {
  CacheFailure(String message) : super('Cache error: $message');
}

class AuthFailure extends Failure {
  AuthFailure(String message) : super('Auth error: $message');
}

class ValidationFailure extends Failure {
  ValidationFailure(String message) : super('Validation error: $message');
}

class NotFoundFailure extends Failure {
  NotFoundFailure(String message) : super('Not found: $message');
}

