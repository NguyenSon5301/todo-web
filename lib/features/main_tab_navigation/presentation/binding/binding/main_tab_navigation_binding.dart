import 'package:flutter/material.dart';

import '../../../../../common/common.dart';
import '../../bloc/main_tab_navigation_bloc.dart';

class MainTabNavigationBinding {
  static MainTabNavigationBloc generateBloc(BuildContext context) {
    return MainTabNavigationBloc(navigator: AppNavigator.fromContext(context));
  }
}
