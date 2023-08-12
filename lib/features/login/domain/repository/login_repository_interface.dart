import '../../../../entities/entities.dart';

abstract class ILoginRepository {
  Future<FirebaseUser> loginByEmail({
    required String email,
    required String password,
  });
}
