import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/navigator/navigator.dart';

extension BuildContextExt on BuildContext {

  T getBloc<T extends Bloc>() => BlocProvider.of<T>(this);


  AppNavigator toNavigator() => AppNavigator.fromContext(this);
}
