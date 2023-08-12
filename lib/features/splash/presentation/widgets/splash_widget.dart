import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/background_art.dart';
import '../../../../common/common.dart';
import '../../../../common/constants/constants.dart';
import '../../../../common/extensions/build_context_ext.dart';
import '../../../../common/global_bloc/global_bloc.dart';
import '../../../../common/singleton/singletons.dart';
import '../../../../utils/utils.dart';
import '../bloc/splash_bloc.dart';

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  bool _showNetworkError = false;
  late final SplashBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = context.getBloc<SplashBloc>();
    _bloc.add(const SplashEvent.init());
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return BlocConsumer<AppNetworkBloc, AppNetworkState>(
      listener: (context, state) {
        if (NetworkStatusSingleton.ins.networkAvailable) {
          if (_showNetworkError) {
            if (Navigator.canPop(context)) {
              AppNavigator.fromContext(context).pop();
            }
          }
        } else {
          _showNetworkError = true;
          showErrorDialog(
            title: StringManager.noInternetTitle,
            desc: StringManager.noInternetDescription,
            barrierDismissible: false,
          );
        }
      },
      builder: (context, state) {
        return Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              child: SizedBox(
                width: width,
                height: height,
                child: Scaffold(
                  backgroundColor: AppColors.transparent,
                  body: Background(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AppText(
                              StringManager.appName,
                              AppTextStyles.title32Bold.copyWith(
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                                color: AppColors.blueLight,
                              ),
                            ),
                            AppText(
                              StringManager.by,
                              AppTextStyles.title18Bold.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: AppColors.lightGray,
                              ),
                            ),
                            AppText(
                              StringManager.purpose,
                              AppTextStyles.title18Bold.copyWith(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: AppColors.lightGray,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
