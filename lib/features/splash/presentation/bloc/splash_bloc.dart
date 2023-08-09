import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/common.dart';
import '../../../../entities/entities.dart';

import '../../domain/usecase/check_is_login.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc({
    required this.navigator,
  }) : super(const SplashState()) {
    on<SplashInitEvent>(_onInit);
    on<SplashNextPageEvent>(_onNextPage);
  }

  final AppNavigator navigator;
  final checkTokenUsecase = SplashCheckHaveTokenUsecase();
  String string = '';
  // final getUseProfileUsecase = ProfileGetUserProfileUsecase();
  // final sendCodeUsecase = OtpResendCodeUsecase();
  // final logoutUsecase = ProfileLogoutUsecase();
}

extension EventHandle on SplashBloc {
  Future<void> _onInit(
    SplashInitEvent event,
    Emitter<SplashState> emitter,
  ) async {
    // UserInfoManager.ins.init();
    // await ZegoIMKit.instance
    //     .init(appID: ZegoConstants.appId, appSign: ZegoConstants.appSign);
    // //TODO: remove it
    // await Future.delayed(const Duration(milliseconds: 3000));
    // final token = await checkTokenUsecase.call();
    // string = token;
    // add(SplashEvent.nextPage(token));
  }

  Future<void> _onNextPage(
    SplashNextPageEvent event,
    Emitter<SplashState> emitter,
  ) async {}
}
