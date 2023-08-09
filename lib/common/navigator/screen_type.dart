part of 'navigator.dart';

@freezed
class ScreenType with _$ScreenType {
  const factory ScreenType.splash() = ScreenTypeSplash;
  // const factory ScreenType.home() = ScreenTypeHome;
}

class ScreenTypeHelper {
  static Widget page(ScreenType screen) {
    return screen.when(
      splash: SplashPage.new,
      // home: HomePage.new,
    );
  }
}
