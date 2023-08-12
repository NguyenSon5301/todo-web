import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../../common/common.dart';

void showAppSnackbar({
  required String message,
  BuildContext? context,
  NavigationType? navigationType,
  SnackBarType? type,
  String title = '',
  Duration duration = const Duration(milliseconds: 3000),
}) {
  final ctx = AppNavigator.getKey(navigationType ?? const NavigationType.root())
      .currentContext;
  if (context == null && ctx == null || message.isEmpty) {
    return;
  }
  final tType = type ?? SnackBarType.general;
  Flushbar(
    titleText: title.isNotEmpty
        ? AppText(
            title,
            AppTextStyles.title18Medium,
            color: AppColors.white,
          )
        : null,
    message: message,
    duration: duration,
    animationDuration: Duration(milliseconds: duration.inMilliseconds ~/ 6),
    margin: const EdgeInsets.all(12).scaled,
    borderRadius: BorderRadius.circular(12.scaled),
    backgroundColor: tType.backgroundColor(),
    flushbarPosition: FlushbarPosition.TOP,
  ).show(context ?? ctx!);
}
