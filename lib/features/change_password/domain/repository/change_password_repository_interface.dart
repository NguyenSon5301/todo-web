abstract class IChangePasswordRepository {
  Future<bool> changePassword({
    required String password,
  });
  Future<bool> checkPassword(String password);
}
