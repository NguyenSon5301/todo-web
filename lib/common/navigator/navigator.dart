// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:page_transition/page_transition.dart';

import '../../features/forgot_password/presentation/page/forgot_password_page.dart';
import '../../features/login/presentation/page/login_page.dart';
import '../../features/main_tab_navigation/presentation/page/main_tab_navigation_page.dart';
import '../../features/sign_up/presentation/page/sign_up_page.dart';
import '../../features/splash/presentation/page/splash_page.dart';
import '../../features/todo/presentation/page/todo_page.dart';

part 'navigation_type.dart';
part 'navigator.freezed.dart';
part 'screen_type.dart';

class AppNavigator {
  AppNavigator({required this.current});
  factory AppNavigator.fromContext(BuildContext context) {
    final state = Navigator.of(context);
    return AppNavigator(current: state);
  }
  NavigatorState current;

  static final Map<NavigationType, GlobalKey<NavigatorState>> _store = {};
  static GlobalKey<NavigatorState> getKey(NavigationType type) {
    var state = _store[type];
    if (state == null) {
      state = GlobalKey();
      _store[type] = state;
    }
    return state;
  }

  Future<T?> push<T extends Object?>({
    required ScreenType screen,
    NavigationType? type,
    PageTransitionType? pageTransitionType,
    Alignment? alignment,
  }) async {
    return _getNavigator(type: type).push<T>(
      PageTransition(
        type: pageTransitionType ?? PageTransitionType.rightToLeft,
        alignment: alignment,
        child: ScreenTypeHelper.page(screen),
      ),
    );
  }

  Future<T?> pushReplace<T extends Object?, TO extends Object?>({
    required ScreenType screen,
    NavigationType? type,
    TO? result,
  }) async {
    return _getNavigator(type: type).pushReplacement(
      PageTransition(
        settings: RouteSettings(
          name: screen.toString(),
        ),
        type: PageTransitionType.rightToLeft,
        child: ScreenTypeHelper.page(screen),
      ),
      result: result,
    );
  }

  void pop<T extends Object?>({
    T? callback,
    NavigationType? type,
  }) {
    _getNavigator(type: type).pop(callback);
  }

  void popToScreen({
    required ScreenType screen,
    NavigationType? type,
  }) {
    _getNavigator(type: type).popUntil((route) {
      return route.settings.name == screen.toString();
    });
  }

  bool canPop({
    NavigationType? type,
  }) {
    return _getNavigator(type: type).canPop();
  }
}

extension _PrivateFunction on AppNavigator {
  NavigatorState _getNavigator({
    NavigationType? type,
  }) {
    if (type == null) {
      return current;
    }
    final keyNavigator = AppNavigator.getKey(type).currentState;
    if (keyNavigator == null) {
      return current;
    }
    return keyNavigator;
  }
}
