import '../app_exception.dart';

class EmptyEmailFieldException extends AppException {
  @override
  String toString() {
    return 'Email is not null!!!';
  }
}

class NotEmailTypeException extends AppException {
  @override
  String toString() {
    return 'Please enter a valid email address';
  }
}
