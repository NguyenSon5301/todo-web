import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../common/common.dart';
import '../../../../common/constants/constants.dart';
import '../../../../common/extensions/extensions.dart';
import '../../../../common/singleton/singletons.dart';
import '../../../change_password/presentation/page/change_password_page.dart';
import '../../../todo/presentation/page/todo_page.dart';
import '../bloc/main_tab_navigation_bloc.dart';

class MainTabNavigationWidget extends StatefulWidget {
  const MainTabNavigationWidget({Key? key}) : super(key: key);

  @override
  State<MainTabNavigationWidget> createState() =>
      _MainTabNavigationWidgetState();
}

class _MainTabNavigationWidgetState extends State<MainTabNavigationWidget> {
  bool showBadge = false;
  late final MainTabNavigationBloc _bloc;
  PageController pageController = PageController();
  SideMenuController sideMenu = SideMenuController();
  List<SideMenuItem> items = [];

  @override
  void initState() {
    _bloc = context.getBloc<MainTabNavigationBloc>();
    items = [
      SideMenuItem(
        title: StringManager.tasks,
        onTap: (index, _) {
          sideMenu.changePage(index);
        },
        icon: const Icon(Icons.task),
      ),
      SideMenuItem(
        title: StringManager.changePassword,
        onTap: (index, _) {
          sideMenu.changePage(index);
        },
        icon: const Icon(Icons.password_rounded),
      ),
      SideMenuItem(
        title: StringManager.logout,
        onTap: (index, _) {
          _bloc.add(const MainTabNavigationEvent.logout());
        },
        icon: const Icon(Icons.exit_to_app),
      ),
    ];
    sideMenu.addListener((index) {
      pageController.jumpToPage(index);
    });
    super.initState();
  }

  void _tabListener() {
    // _bloc.add(MainTabNavigationEvent.changeTab(_bloc.tabController.index));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MainTabNavigationBloc, MainTabNavigationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SideMenu(
                style: SideMenuStyle(
                  displayMode: SideMenuDisplayMode.auto,
                  decoration: const BoxDecoration(),
                  openSideMenuWidth: 200.scaled,
                  hoverColor: Colors.blue[100],
                  selectedColor: Colors.lightBlue,
                  selectedIconColor: Colors.white,
                  unselectedIconColor: Colors.black54,
                  backgroundColor: AppColors.blue.withOpacity(0.1),
                  selectedTitleTextStyle: const TextStyle(color: Colors.white),
                  unselectedTitleTextStyle:
                      const TextStyle(color: Colors.black54),
                  iconSize: 20.scaled,
                  itemBorderRadius: const BorderRadius.all(
                    Radius.circular(5),
                  ),
                  showTooltip: true,
                  itemHeight: 50.scaled,
                  itemInnerSpacing: 8.scaled,
                  itemOuterPadding: const EdgeInsets.symmetric(horizontal: 5),
                  toggleColor: Colors.black54,
                ),
                controller: sideMenu,
                title: Center(
                  child: AppText(
                    StringManager.appName,
                    AppTextStyles.heading32Bold
                        .copyWith(color: AppColors.blueLight),
                  ),
                ),
                footer: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppText(
                      'Hello',
                      AppTextStyles.body14Medium
                          .copyWith(color: AppColors.blueLight),
                    ),
                    AppText(
                      UserInfoManager.ins.email,
                      AppTextStyles.body14Medium
                          .copyWith(color: AppColors.blueLight),
                    ),
                  ],
                ),
                items: items,
              ),
              Expanded(
                child: PageView(
                  controller: pageController,
                  children: const [TodoPage(), ChangePasswordPage()],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  bool onWillPop() {
    return false;
  }
}
