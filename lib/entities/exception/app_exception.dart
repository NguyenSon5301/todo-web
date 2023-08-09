export './network_error.dart';

class AppException extends Error implements Exception {}

class AppUnknownException extends AppException {
  @override
  String toString() {
    return 'Something went wrong, please try again later!';
  }
}

class AppUnknownBackException extends AppException {
  @override
  String toString() {
    return '';
  }
}
