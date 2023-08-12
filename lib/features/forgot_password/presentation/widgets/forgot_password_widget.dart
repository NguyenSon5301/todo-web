import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/background_art.dart';
import '../../../../common/common.dart';
import '../../../../common/constants/constants.dart';
import '../../../../utils/utils.dart';
import '../bloc/forgot_password_bloc.dart';

class ForgotPasswordWidget extends StatefulWidget {
  const ForgotPasswordWidget({super.key});

  @override
  State<ForgotPasswordWidget> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPasswordWidget> {
  late ForgotPasswordBloc _bloc;
  @override
  void initState() {
    _bloc = BlocProvider.of<ForgotPasswordBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgotPasswordBloc, ForgotPasswordState>(
      listener: (context, state) {
        if (state.exception != null) {
          showAppSnackbar(
            message: state.exception.toString(),
            type: SnackBarType.error,
          );
        }
      },
      builder: (context, state) {
        return Background(
          child: Stack(
            children: <Widget>[
              Positioned(
                child: WillPopScope(
                  child: Scaffold(
                    backgroundColor: AppColors.transparent,
                    body: ListView(
                      physics: const BouncingScrollPhysics(),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            top: 150.scaled,
                            left: 100.scaled,
                            right: 100.scaled,
                          ),
                          child: Center(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50)
                                      .scaled,
                              child: Card(
                                child: Column(
                                  children: [
                                    SizedBox(height: 15.scaled),
                                    SizedBox(
                                      width: 350.scaled,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              if (_bloc.navigator.canPop()) {
                                                _bloc.navigator.pop();
                                              }
                                            },
                                            icon: const Icon(
                                              Icons.arrow_back_ios,
                                            ),
                                          ),
                                          AppText(
                                            StringManager.titleForgotPassword,
                                            AppTextStyles.title32Bold.copyWith(
                                              fontSize: 35,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: AppTextStyles
                                                  .fontMerriweather,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 100.scaled,
                                      width: 250.scaled,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10.scaled,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            AppText(
                                              StringManager.hintEmail,
                                              AppTextStyles.body14Regular,
                                            ),
                                            SizedBox(
                                              height: 5.scaled,
                                            ),
                                            TextFormField(
                                              onChanged: (v) {
                                                _bloc.emailController.add(v);
                                                _bloc.add(
                                                  const ForgotPasswordOnChangeFieldsEvent(),
                                                );
                                              },
                                              style: AppTextStyles.body16Regular
                                                  .copyWith(
                                                color: AppColors.black,
                                              ),
                                              cursorColor: AppColors.gray,
                                              autofocus: false,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    EdgeInsets.fromLTRB(
                                                  20.scaled,
                                                  15.scaled,
                                                  20.scaled,
                                                  15.scaled,
                                                ),
                                                hintText:
                                                    StringManager.hintEmail,
                                                hintStyle: AppTextStyles
                                                    .body16Regular
                                                    .copyWith(
                                                  color: AppColors.lightGray,
                                                ),
                                                fillColor: AppColors.white
                                                    .withOpacity(.3),
                                                filled: true,
                                                errorText: state.emailException
                                                    ?.toString(),
                                                errorStyle: AppTextStyles
                                                    .caption12Regular
                                                    .copyWith(
                                                  color: AppColors.red,
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    10.scaled,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 70.scaled,
                                      width: 150.scaled,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10.scaled,
                                        ),
                                        child: AppButton(
                                          onTap: () {
                                            _bloc.add(
                                              const ForgotPasswordEvent
                                                  .pressForgotPasswordButton(),
                                            );
                                          },
                                          title: AppText(
                                            StringManager.confirmButton,
                                            AppTextStyles.button16Medium,
                                            color: AppColors.white,
                                          ),
                                          disable: !state.checkRightFields,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 50.scaled,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onWillPop: () async {
                    final exitStatus = onWillPop();
                    if (exitStatus) {
                      exit(0);
                    }
                    return false;
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  bool onWillPop() {
    return true;
  }
}
