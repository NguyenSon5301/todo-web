import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_web/features/main_tab_navigation/presentation/binding/binding/main_tab_navigation_binding.dart';

import '../widget/main_tab_navigation_widget.dart';

class MainTabNavitionPage extends StatelessWidget {
  const MainTabNavitionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BlocProvider(
      create: MainTabNavigationBinding.generateBloc,
      child: MainTabNavigationWidget(),
    );
  }
}
