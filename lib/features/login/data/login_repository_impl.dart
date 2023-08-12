import '../../../entities/entities.dart';
import '../../../services/services.dart';
import '../domain/repository/login_repository_interface.dart';

class LoginRepositoryImpl implements ILoginRepository {
  final AuthService _auth = AuthService();

  @override
  Future<FirebaseUser> loginByEmail({
    required String email,
    required String password,
  }) async {
    final FirebaseUser result = await _auth.signInEmailPassword(
      LoginUser(email: email, password: password),
    );
    return result;
  }
}
