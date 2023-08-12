import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rxdart/subjects.dart';

import '../../../../common/common.dart';
import '../../../../common/components/dialog/notification_dialog.dart';
import '../../../../common/constants/constants.dart';
import '../../../../entities/entities.dart';
import '../../../login/domain/usecase/check_email_usecase.dart';
import '../../domain/usecase/submit_forgot_password_usecase.dart';

part 'forgot_password_bloc.freezed.dart';
part 'forgot_password_event.dart';
part 'forgot_password_state.dart';

class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc({
    required this.navigator,
    required this.submitDataUsecase,
  }) : super(const ForgotPasswordState()) {
    on<ForgotPasswordInitEvent>(_onInit);
    on<ForgotPasswordPressForgotPasswordButtonEvent>(
      _onPressForgotPasswordEvent,
    );
    on<ForgotPasswordOnChangeFieldsEvent>(_onChangeFieldsEvent);
    on<CheckEnableForForgotPasswordButtonEvent>(
      __checkeEnableForForgotPasswordButtonEvent,
    );

    on<ForgotPasswordNextPageEvent>(_nextPageHandle);
  }
  final ForgotPasswordSubmitDataUsecase submitDataUsecase;
  late final LoginEmailDataUsecase checkEmailUseCase;

  final AppNavigator navigator;
  final emailController = BehaviorSubject<String>()..add('');

  @override
  Future<void> close() {
    emailController.close();
    return super.close();
  }
}

extension EventHandle on ForgotPasswordBloc {
  void _onInit(
    ForgotPasswordInitEvent event,
    Emitter<ForgotPasswordState> emitter,
  ) {
    checkEmailUseCase = LoginEmailDataUsecase();
  }

  Future<void> _onPressForgotPasswordEvent(
    ForgotPasswordPressForgotPasswordButtonEvent event,
    Emitter<ForgotPasswordState> emitter,
  ) async {
    final submitForgotPassword = await submitDataUsecase.submitForgotPassword(
      email: emailController.value,
    );
    submitForgotPassword.fold((l) => emitter(state.copyWith(exception: l)),
        (r) {
      add(const ForgotPasswordEvent.nextPage());
    });
  }

  Future<void> _nextPageHandle(
    ForgotPasswordNextPageEvent event,
    Emitter<ForgotPasswordState> emitter,
  ) async {
    await showDialog<bool>(
      context: navigator.current.context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 400.scaled),
          child: NotificationDialog(
            title: StringManager.titleForgotPasswordSuccess,
            description: StringManager.descriptionForgotPasswordSuccess,
            onPressButtonSubmit: () {},
            buttonTitleSubmit: StringManager.ok,
          ),
        );
      },
    );
    await navigator.pushReplace(
      screen: const ScreenType.login(),
    );
  }

  Future<void> _onChangeFieldsEvent(
    ForgotPasswordOnChangeFieldsEvent event,
    Emitter<ForgotPasswordState> emitter,
  ) async {
    emitter(
      state.copyWith(
        emailException: null,
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
    add(const ForgotPasswordEvent.checkEnableForgotPasswordButton());
  }

  Future<void> __checkeEnableForForgotPasswordButtonEvent(
    CheckEnableForForgotPasswordButtonEvent event,
    Emitter<ForgotPasswordState> emitter,
  ) async {
    if (state.emailException == null && emailController.value.isNotEmpty) {
      emitter(
        state.copyWith(
          checkRightFields: true,
          isLoading: false,
        ),
      );
    } else {
      emitter(state.copyWith(checkRightFields: false));
    }
  }
}
