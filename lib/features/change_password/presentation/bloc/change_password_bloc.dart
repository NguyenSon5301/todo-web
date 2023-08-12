import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/common.dart';
import '../../../../common/constants/constants.dart';
import '../../../../entities/entities.dart';
import '../../../../utils/utils.dart';
import '../../../login/domain/usecase/check_password_usecase.dart';
import '../../domain/usecase/check_password_usecase.dart';
import '../../domain/usecase/submit_change_password_usecase.dart';

part 'change_password_bloc.freezed.dart';
part 'change_password_event.dart';
part 'change_password_state.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc({
    required this.navigator,
    required this.submitDataUsecase,
    required this.checkPasswordIsRightUseCase,
  }) : super(const ChangePasswordState()) {
    on<ChangePasswordInitEvent>(_onInit);
    on<ChangePasswordPressChangePasswordButtonEvent>(
      _onPressChangePasswordEvent,
    );
    on<ChangePasswordOnChangeFieldsEvent>(_onChangeFieldsEvent);
    on<CheckEnableForChangePasswordButtonEvent>(
      __checkeEnableForChangePasswordButtonEvent,
    );
  }

  final ChangePasswordSubmitDataUsecase submitDataUsecase;
  final CheckPasswordUserCase checkPasswordIsRightUseCase;
  late final LoginPassWordDataUsecase checkPassWordUseCase;

  final AppNavigator navigator;
  final passwordOldController = TextEditingController();
  final passwordNewController = TextEditingController();
  final passwordNewAgainController = TextEditingController();

  @override
  Future<void> close() {
    passwordOldController.dispose();
    passwordNewController.dispose();
    passwordNewAgainController.dispose();
    return super.close();
  }
}

extension EventHandle on ChangePasswordBloc {
  void _onInit(
    ChangePasswordInitEvent event,
    Emitter<ChangePasswordState> emitter,
  ) {
    checkPassWordUseCase = LoginPassWordDataUsecase();
  }

  Future<void> _onPressChangePasswordEvent(
    ChangePasswordPressChangePasswordButtonEvent event,
    Emitter<ChangePasswordState> emitter,
  ) async {
    final checkResult = await checkPasswordIsRightUseCase.checkPassword(
      password: passwordOldController.text,
    );
    checkResult.fold((l) => emitter(state.copyWith(passwordOldException: l)),
        (r) async {
      final submitResult = await submitDataUsecase.submitChangePassword(
        password: passwordNewController.text,
      );
      submitResult.fold((l) => emitter(state.copyWith(exception: l)), (r) {
        passwordOldController.clear();
        passwordNewController.clear();
        passwordNewAgainController.clear();
        showAppSnackbar(
          message: StringManager.changePasswordSuccessfully,
          type: SnackBarType.success,
        );
      });
    });
  }

  Future<void> _onChangeFieldsEvent(
    ChangePasswordOnChangeFieldsEvent event,
    Emitter<ChangePasswordState> emitter,
  ) async {
    emitter(
      state.copyWith(
        passwordOldException: null,
        passwordNewException: null,
        passwordNewAgainException: null,
        exception: null,
      ),
    );
    if (passwordOldController.text.isNotEmpty) {
      final checkOldPassWordResult = checkPassWordUseCase.checkPassword(
        password: passwordOldController.text,
      )..fold(
          (l) => emitter(
            state.copyWith(passwordOldException: l, isLoading: false),
          ),
          (r) => emitter(state.copyWith(passwordOldException: null)),
        );
    }
    if (passwordNewController.text.isNotEmpty) {
      final checkNewPassWordResult = checkPassWordUseCase.checkPassword(
        password: passwordNewController.text,
      )..fold(
          (l) => emitter(
            state.copyWith(passwordNewException: l, isLoading: false),
          ),
          (r) => emitter(state.copyWith(passwordNewException: null)),
        );
    }
    if (passwordNewController.text.isNotEmpty &&
        passwordNewAgainController.text.isNotEmpty) {
      if (passwordNewAgainController.value != passwordNewController.value) {
        emitter(
          state.copyWith(
            passwordNewAgainException: AppUnknownException(
              exceptionString: StringManager.passAgainError,
            ),
          ),
        );
      } else {
        emitter(state.copyWith(passwordNewAgainException: null));
      }
    }
    add(const ChangePasswordEvent.checkEnableChangePasswordButton());
  }

  Future<void> __checkeEnableForChangePasswordButtonEvent(
    CheckEnableForChangePasswordButtonEvent event,
    Emitter<ChangePasswordState> emitter,
  ) async {
    if (state.passwordOldException == null &&
        state.passwordNewException == null &&
        state.passwordNewAgainException == null &&
        passwordNewAgainController.text.isNotEmpty &&
        passwordNewController.text.isNotEmpty &&
        passwordOldController.text.isNotEmpty) {
      emitter(
        state.copyWith(
          checkRightFields: true,
          passwordOldException: null,
          passwordNewException: null,
          passwordNewAgainException: null,
          isLoading: false,
        ),
      );
    } else {
      emitter(state.copyWith(checkRightFields: false));
    }
  }
}
