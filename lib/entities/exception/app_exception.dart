export './network_error.dart';

class AppException extends Error implements Exception {}

class AppUnknownException extends AppException {
  final String exceptionString;
  AppUnknownException({required this.exceptionString});
  @override
  String toString() {
    return exceptionString.isEmpty
        ? 'Something went wrong!!!'
        : exceptionString;
  }
}

class AppUnknownBackException extends AppException {
  @override
  String toString() {
    return '';
  }
}
