import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/common.dart';
import '../../../../common/singleton/singletons.dart';
import '../../../../entities/entities.dart';

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
  final user = FirebaseAuth.instance.currentUser;
  final AppNavigator navigator;
}

extension EventHandle on SplashBloc {
  Future<void> _onInit(
    SplashInitEvent event,
    Emitter<SplashState> emitter,
  ) async {
    await Future.delayed(const Duration(milliseconds: 3000));
    add(const SplashEvent.nextPage());
  }

  Future<void> _onNextPage(
    SplashNextPageEvent event,
    Emitter<SplashState> emitter,
  ) async {
    if (user != null) {
      final email = user!.email.toString();
      UserInfoManager.ins.email = email;
      await navigator.pushReplace(screen: const ScreenType.mainTabNavigation());
    } else {
      await navigator.pushReplace(screen: const ScreenType.login());
    }
  }
}
