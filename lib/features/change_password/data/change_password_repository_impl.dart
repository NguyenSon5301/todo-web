import 'package:firebase_auth/firebase_auth.dart';

import '../domain/repository/change_password_repository_interface.dart';

class ChangePasswordRepositoryImpl implements IChangePasswordRepository {
  final user = FirebaseAuth.instance.currentUser;

  @override
  Future<bool> changePassword({
    required String password,
  }) async {
    return user!.updatePassword(password).then((_) {
      return true;
    }).catchError((error) {
      return false;
    });
  }

  @override
  Future<bool> checkPassword(String password) async {
    try {
      if (user != null) {
        final credential = EmailAuthProvider.credential(
          email: user!.email ?? '',
          password: password,
        );
        await user!.reauthenticateWithCredential(credential);
        return true;
      }
      return false;
    } on Exception {
      return false;
    }
  }
}
