import 'app_exception.dart';

class NetworkException extends AppException {
  @override
  String toString() {
    return 'No internet available. Please check your connection!';
  }
}
