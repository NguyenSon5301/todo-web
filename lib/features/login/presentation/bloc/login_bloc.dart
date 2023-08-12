import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/subjects.dart';

import '../../../../common/common.dart';
import '../../../../common/singleton/singletons.dart';
import '../../../../entities/entities.dart';
import '../../domain/usecase/check_email_usecase.dart';
import '../../domain/usecase/check_password_usecase.dart';
import '../../domain/usecase/submit_login_usecase.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required this.navigator,
    required this.submitDataUsecase,
  }) : super(const LoginState()) {
    on<LoginInitEvent>(_onInit);
    on<LoginPressLoginButtonEvent>(_onPressLoginEvent);
    on<LoginOnChangeFieldsEvent>(_onChangeFieldsEvent);
    on<CheckEnableForLoginButtonEvent>(__checkeEnableForLoginButtonEvent);
    on<LoginPressForgotPasswordTextButtonEvent>(
      _onPressForgotPasswordTextButtonEvent,
    );
    on<LoginPressSignUpTextButtonEvent>(_onPressSignUpTextButtonEvent);
    on<LoginNextPageEvent>(_nextPageHandle);
  }
  final LoginSubmitDataUsecase submitDataUsecase;
  late final LoginEmailDataUsecase checkEmailUseCase;
  late final LoginPassWordDataUsecase checkPassWordUseCase;

  final AppNavigator navigator;
  final emailController = BehaviorSubject<String>()..add('');
  final passwordController = BehaviorSubject<String>()..add('');

  @override
  Future<void> close() {
    emailController.close();
    passwordController.close();
    return super.close();
  }
}

extension EventHandle on LoginBloc {
  void _onInit(LoginInitEvent event, Emitter<LoginState> emitter) {
    checkEmailUseCase = LoginEmailDataUsecase();
    checkPassWordUseCase = LoginPassWordDataUsecase();
  }

  Future<void> _onPressLoginEvent(
    LoginPressLoginButtonEvent event,
    Emitter<LoginState> emitter,
  ) async {
    final submitLogin = await submitDataUsecase.submitLogin(
        email: emailController.value, password: passwordController.value);
    submitLogin.fold((l) => emitter(state.copyWith(exception: l)), (r) {
      add(const LoginEvent.nextPage());
    });
  }

  Future<void> _nextPageHandle(
    LoginNextPageEvent event,
    Emitter<LoginState> emitter,
  ) async {
    UserInfoManager.ins.email = emailController.value;
    await navigator.pushReplace(
      screen: const ScreenType.mainTabNavigation(),
    );
  }

  Future<void> _onPressForgotPasswordTextButtonEvent(
    LoginPressForgotPasswordTextButtonEvent event,
    Emitter<LoginState> emitter,
  ) async {
    await navigator.push(screen: const ScreenType.forgotPassword());
  }

  Future<void> _onPressSignUpTextButtonEvent(
    LoginPressSignUpTextButtonEvent event,
    Emitter<LoginState> emitter,
  ) async {
    await navigator.push(
      screen: const ScreenType.signUp(),
    );
  }

  Future<void> _onChangeFieldsEvent(
    LoginOnChangeFieldsEvent event,
    Emitter<LoginState> emitter,
  ) async {
    emitter(state.copyWith(
        emailException: null, passwordException: null, exception: null));
    if (emailController.value.isNotEmpty) {
      final checkMailUsecase = checkEmailUseCase.checkEmail(
        email: emailController.value,
      )..fold(
          (l) => emitter(state.copyWith(emailException: l, isLoading: false)),
          (r) => emitter(state.copyWith(emailException: null)),
        );
    }
    if (passwordController.value.isNotEmpty) {
      final checkPassWordUsecase = checkPassWordUseCase.checkPassword(
        password: passwordController.value,
      )..fold(
          (l) =>
              emitter(state.copyWith(passwordException: l, isLoading: false)),
          (r) => emitter(state.copyWith(passwordException: null)),
        );
    }
    add(const LoginEvent.checkEnableLoginButton());
  }

  Future<void> __checkeEnableForLoginButtonEvent(
    CheckEnableForLoginButtonEvent event,
    Emitter<LoginState> emitter,
  ) async {
    if (state.emailException == null &&
        state.passwordException == null &&
        emailController.value.isNotEmpty &&
        passwordController.value.isNotEmpty) {
      emitter(
        state.copyWith(
          checkRightFields: true,
          passwordException: null,
          isLoading: false,
        ),
      );
    } else {
      emitter(state.copyWith(checkRightFields: false));
    }
  }
}
