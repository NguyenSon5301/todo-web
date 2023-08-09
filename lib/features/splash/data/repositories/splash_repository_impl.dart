import '../../../../services/services.dart';

class SplashRepositoryImpl {
  Future<String> getTokenFromSharePref() async {
    try {
      return await SharePreferenceService.getString(SharePrefKey.assetToken);
    } catch (e) {
      return '';
    }
  }
}
