import '../../../entities/entities.dart';
import '../../../services/services.dart';
import '../domain/repository/sign_up_repository_interface.dart';

class SignUpRepositoryImpl implements ISignUpRepository {
  final AuthService _auth = AuthService();

  @override
  Future<FirebaseUser> signUpByEmail({
    required String email,
    required String password,
  }) async {
    final FirebaseUser result = await _auth.registerEmailPassword(
      LoginUser(email: email, password: password),
    );
    return result;
  }
}
