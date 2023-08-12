part of 'navigator.dart';

@freezed
class ScreenType with _$ScreenType {
  const factory ScreenType.splash() = ScreenTypeSplash;
  const factory ScreenType.login() = ScreenTypeLogin;
  const factory ScreenType.mainTabNavigation() = ScreenTypeMainTabNavigation;
  const factory ScreenType.todo() = ScreenTypeTodo;
  const factory ScreenType.forgotPassword() = ScreenTypeForgotPassword;
  const factory ScreenType.signUp() = ScreenTypeSignUp;
}

class ScreenTypeHelper {
  static Widget page(ScreenType screen) {
    return screen.when(
      splash: SplashPage.new,
      login: LoginPage.new,
      mainTabNavigation: MainTabNavitionPage.new,
      todo: TodoPage.new,
      forgotPassword: ForgotPasswordPage.new,
      signUp: SignUpPage.new,
    );
  }
}
