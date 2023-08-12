import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/background_art.dart';
import '../../../../common/common.dart';
import '../../../../common/constants/constants.dart';
import '../../../../utils/utils.dart';
import '../bloc/login_bloc.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginState();
}

class _LoginState extends State<LoginWidget> {
  bool _obscurePasswordText = true;

  late LoginBloc _bloc;
  @override
  void initState() {
    _bloc = BlocProvider.of<LoginBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
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
                            top: 100.scaled,
                            left: 100.scaled,
                            right: 100.scaled,
                          ),
                          child: Center(
                            child: Card(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50)
                                        .scaled,
                                child: Column(
                                  children: [
                                    // Lottie.asset(LottiePath.welcome),
                                    SizedBox(height: 30.scaled),
                                    AppText(
                                      StringManager.appName,
                                      AppTextStyles.title32Bold.copyWith(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w600,
                                        fontFamily:
                                            AppTextStyles.fontMerriweather,
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
                                                  const LoginOnChangeFieldsEvent(),
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
                                              StringManager.passwordField,
                                              AppTextStyles.body14Regular,
                                            ),
                                            SizedBox(
                                              height: 5.scaled,
                                            ),
                                            TextFormField(
                                              obscureText: _obscurePasswordText,
                                              obscuringCharacter: StringManager
                                                  .passwordHiddenChar,
                                              onChanged: (v) {
                                                _bloc.passwordController.add(v);
                                                _bloc.add(
                                                  const LoginOnChangeFieldsEvent(),
                                                );
                                              },
                                              style: AppTextStyles.body16Regular
                                                  .copyWith(
                                                color: AppColors.black,
                                              ),
                                              autofocus: false,
                                              textInputAction:
                                                  TextInputAction.next,
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.fromLTRB(
                                                  20,
                                                  15,
                                                  20,
                                                  15,
                                                ).scaled,
                                                hintText:
                                                    StringManager.passwordField,
                                                hintStyle: AppTextStyles
                                                    .body16Regular
                                                    .copyWith(
                                                  color: AppColors.lightGray,
                                                ),
                                                fillColor: AppColors.white
                                                    .withOpacity(.3),
                                                filled: true,
                                                errorText: state
                                                    .passwordException
                                                    ?.toString(),
                                                errorStyle: AppTextStyles
                                                    .caption12Regular
                                                    .copyWith(
                                                  color: AppColors.red,
                                                ),
                                                suffixIcon: IconButton(
                                                  icon: Icon(
                                                    !_obscurePasswordText
                                                        ? Icons.visibility
                                                        : Icons.visibility_off,
                                                    color: !_obscurePasswordText
                                                        ? AppColors.gray
                                                        : AppColors.lightGray,
                                                  ),
                                                  onPressed: () {
                                                    setState(() {
                                                      _obscurePasswordText =
                                                          !_obscurePasswordText;
                                                    });
                                                  },
                                                ),
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 250.scaled,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10.scaled,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                _bloc.add(
                                                  const LoginEvent
                                                      .pressForgotpasswordTextButton(),
                                                );
                                              },
                                              child: AppText(
                                                StringManager
                                                    .contentForgotPasswordPage,
                                                AppTextStyles.body14Medium
                                                    .copyWith(
                                                  color: AppColors.blue,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 30.scaled,
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
                                              const LoginEvent
                                                  .pressLoginButton(),
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
                                    TextButton(
                                      onPressed: () {
                                        _bloc.add(
                                          const LoginEvent
                                              .pressSignUpTextButton(),
                                        );
                                      },
                                      child: AppText(
                                        StringManager.referralSignUp,
                                        AppTextStyles.body14Medium.copyWith(
                                          color: AppColors.blue,
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
