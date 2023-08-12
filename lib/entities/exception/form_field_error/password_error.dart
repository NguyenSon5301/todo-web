import '../app_exception.dart';

class EmptyPassWordFieldException extends AppException {
  @override
  String toString() {
    return 'Password is not null!!!';
  }
}

class PasswordEnoughCharacterException extends AppException {
  final int number;
  PasswordEnoughCharacterException({required this.number});
  @override
  String toString() {
    return 'More than $number character';
  }
}
