import 'package:flutter/material.dart';

import '../../../../common/common.dart';
import '../bloc/splash_bloc.dart';

class SplashBinding {
  static SplashBloc createBloc(BuildContext context) {
    return SplashBloc(navigator: AppNavigator.fromContext(context));
  }
}
