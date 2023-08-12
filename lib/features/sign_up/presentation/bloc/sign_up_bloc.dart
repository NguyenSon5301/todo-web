import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/subjects.dart';

import '../../../../common/common.dart';
import '../../../../common/components/dialog/notification_dialog.dart';
import '../../../../common/constants/constants.dart';
import '../../../../common/singleton/singletons.dart';
import '../../../../entities/entities.dart';
import '../../../../utils/utils.dart';
import '../../../login/domain/usecase/check_email_usecase.dart';
import '../../../login/domain/usecase/check_password_usecase.dart';
import '../../domain/usecase/submit_sign_up_usecase.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({
    required this.navigator,
    required this.submitDataUsecase,
  }) : super(const SignUpState()) {
    on<SignUpInitEvent>(_onInit);
    on<SignUpPressSignUpButtonEvent>(_onPressSignUpEvent);
    on<SignUpOnChangeFieldsEvent>(_onChangeFieldsEvent);
    on<CheckEnableForSignUpButtonEvent>(__checkeEnableForSignUpButtonEvent);
    on<SignUpNextPageEvent>(_nextPageHandle);
  }
  final SignUpSubmitDataUsecase submitDataUsecase;
  late final LoginEmailDataUsecase checkEmailUseCase;
  late final LoginPassWordDataUsecase checkPassWordUseCase;

  final AppNavigator navigator;
  final emailController = BehaviorSubject<String>()..add('');
  final passwordController = BehaviorSubject<String>()..add('');
  final passwordAgainController = BehaviorSubject<String>()..add('');

  @override
  Future<void> close() {
    emailController.close();
    passwordController.close();
    passwordAgainController.close();
    return super.close();
  }
}

extension EventHandle on SignUpBloc {
  void _onInit(SignUpInitEvent event, Emitter<SignUpState> emitter) {
    checkEmailUseCase = LoginEmailDataUsecase();
    checkPassWordUseCase = LoginPassWordDataUsecase();
  }

  Future<void> _onPressSignUpEvent(
    SignUpPressSignUpButtonEvent event,
    Emitter<SignUpState> emitter,
  ) async {
    final submitSignUp = await submitDataUsecase.submitSignUp(
      email: emailController.value,
      password: passwordController.value,
    );
    submitSignUp.fold((l) => emitter(state.copyWith(exception: l)), (r) {
      add(const SignUpEvent.nextPage());
    });
  }

  Future<void> _nextPageHandle(
    SignUpNextPageEvent event,
    Emitter<SignUpState> emitter,
  ) async {
    await showDialog<bool>(
      context: navigator.current.context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return NotificationDialog(
          title: StringManager.titleSignUp,
          description: StringManager.signUpSuccessfully,
          onPressButtonSubmit: () {},
          buttonTitleSubmit: StringManager.ok,
        );
      },
    );
    if (navigator.canPop()) {
      navigator.pop();
    }
  }

  Future<void> _onChangeFieldsEvent(
    SignUpOnChangeFieldsEvent event,
    Emitter<SignUpState> emitter,
  ) async {
    emitter(
      state.copyWith(
        emailException: null,
        passwordException: null,
        passwordAgainException: null,
        exception: null,
      ),
    );
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
    if (passwordController.value.isNotEmpty &&
        passwordAgainController.value.isNotEmpty) {
      if (passwordAgainController.value != passwordController.value) {
        emitter(
          state.copyWith(
            passwordAgainException: AppUnknownException(
              exceptionString: StringManager.passAgainError,
            ),
          ),
        );
      } else {
        emitter(state.copyWith(passwordAgainException: null));
      }
    }
    add(const SignUpEvent.checkEnableSignUpButton());
  }

  Future<void> __checkeEnableForSignUpButtonEvent(
    CheckEnableForSignUpButtonEvent event,
    Emitter<SignUpState> emitter,
  ) async {
    if (state.emailException == null &&
        state.passwordException == null &&
        state.passwordAgainException == null &&
        passwordAgainController.value.isNotEmpty &&
        emailController.value.isNotEmpty &&
        passwordController.value.isNotEmpty) {
      emitter(
        state.copyWith(
          checkRightFields: true,
          passwordException: null,
          emailException: null,
          passwordAgainException: null,
          isLoading: false,
        ),
      );
    } else {
      emitter(state.copyWith(checkRightFields: false));
    }
  }
}
