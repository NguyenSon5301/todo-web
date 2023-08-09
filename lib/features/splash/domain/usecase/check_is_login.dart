import '../../../../common/common.dart';
import '../../data/repositories/splash_repository_impl.dart';

class SplashCheckHaveTokenUsecase {
  final repository = SplashRepositoryImpl();
  Future<String> call() async {
    final token = await repository.getTokenFromSharePref();
    if (token.isNotEmpty) {
      // UserInfoManager.ins
      //   ..assetToken = token
      //   ..isLogin = true;
    }
    print('token: $token');
    return token;
  }
}
