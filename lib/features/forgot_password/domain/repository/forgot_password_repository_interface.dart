abstract class IForgotPasswordRepository {
  Future<bool> submitForgotPassword({
    required String email,
  });
}
