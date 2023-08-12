import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../common/common.dart';
import '../../../../common/components/dialog/notification_dialog.dart';
import '../../../../common/constants/constants.dart';
import '../../../../common/singleton/singletons.dart';
import '../../../../entities/entities.dart';
import '../../../../services/services.dart';

part 'main_tab_navigation_bloc.freezed.dart';
part 'main_tab_navigation_event.dart';
part 'main_tab_navigation_state.dart';

class MainTabNavigationBloc
    extends Bloc<MainTabNavigationEvent, MainTabNavigationState> {
  MainTabNavigationBloc({
    required this.navigator,
  }) : super(const MainTabNavigationState()) {
    on<MainTabNavigationInitEvent>(_onInit);
    on<MainTabNavigationNextPageEvent>(_onNextPage);
    on<MainTabNavigationLogoutEvent>(_onLogout);
  }
  final auth = AuthService();
  final AppNavigator navigator;
}

extension EventHandle on MainTabNavigationBloc {
  Future<void> _onInit(
    MainTabNavigationInitEvent event,
    Emitter<MainTabNavigationState> emitter,
  ) async {}

  Future<void> _onNextPage(
    MainTabNavigationNextPageEvent event,
    Emitter<MainTabNavigationState> emitter,
  ) async {}
  Future<void> _onLogout(
    MainTabNavigationLogoutEvent event,
    Emitter<MainTabNavigationState> emitter,
  ) async {
    await showDialog<bool>(
      context: navigator.current.context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return NotificationDialog(
          title: StringManager.logout,
          description: StringManager.logoutDescription,
          onPressButtonSubmit: () async {
            await auth.signOut();
            UserInfoManager.ins.email = '';
            await navigator.pushReplace(screen: const ScreenType.login());
          },
          buttonTitleSubmit: StringManager.confirmButton,
          buttonTitleCancel: StringManager.cancelButton,
        );
      },
    );
  }
}
