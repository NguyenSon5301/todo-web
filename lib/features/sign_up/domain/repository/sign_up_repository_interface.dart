import '../../../../entities/entities.dart';

abstract class ISignUpRepository {
  Future<FirebaseUser> signUpByEmail({
    required String email,
    required String password,
  });
}
