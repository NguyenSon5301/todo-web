import 'dart:ui';

import '../../common/colors/app_color.dart';

enum SnackBarType {
  general,
  success,
  information,
  warning,
  error,
}

extension SnackBarTypeHelper on SnackBarType {
  Color backgroundColor() {
    switch (this) {
      case SnackBarType.general:
        return AppColors.gray;

      case SnackBarType.success:
        return AppColors.green;

      case SnackBarType.information:
        return AppColors.info;

      case SnackBarType.warning:
        return AppColors.warning;

      case SnackBarType.error:
        return AppColors.red;
    }
  }
}
