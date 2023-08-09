import 'package:flutter/material.dart';

import '../../../common/common.dart';
import '../utils.dart';

void showErrorDialog({
  String title = '',
  String desc = '',
  String textButton = 'OK',
  String icon = 'images/ic_warning.png',
  bool barrierDismissible = true,
  bool isShowIcon = true,
  bool isDisableBackButtonAndroid = false,
  bool isForceShow = false,
  Widget? descWidget,
  void Function()? onTap,
}) {
  if (isEmpty(desc) && descWidget == null) {
    return;
  }
  if (AppNavigator.getKey(const NavigationType.root()).currentContext != null) {
    final context =
        AppNavigator.getKey(const NavigationType.root()).currentContext!;
    showDialog(
      context: context,
      barrierDismissible: barrierDismissible,
      useRootNavigator: true,
      builder: (context) {
        return AppDialog(
          isDismissible: barrierDismissible,
          description: desc,
          title: title.isEmpty ? 'Error' : title,
        );
      },
    );
  }
}
