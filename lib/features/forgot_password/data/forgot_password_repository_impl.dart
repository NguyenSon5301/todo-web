import 'package:firebase_auth/firebase_auth.dart';

import '../domain/repository/forgot_password_repository_interface.dart';

class ForgotPasswordRepositoryImpl implements IForgotPasswordRepository {
  final _auth = FirebaseAuth.instance;

  @override
  Future<bool> submitForgotPassword({
    required String email,
  }) async {
    return _auth
        .sendPasswordResetEmail(email: email)
        .then((value) => true)
        .catchError((e) => false);
  }
}
