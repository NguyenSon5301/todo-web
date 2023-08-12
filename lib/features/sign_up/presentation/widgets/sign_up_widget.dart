import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/background_art.dart';
import '../../../../common/common.dart';
import '../../../../common/constants/constants.dart';
import '../../../../utils/utils.dart';
import '../bloc/sign_up_bloc.dart';

class SignUpWidget extends StatefulWidget {
  const SignUpWidget({super.key});

  @override
  State<SignUpWidget> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpWidget> {
  bool _obscurePasswordText = true;
  bool _obscurePasswordAgainText = true;

  late SignUpBloc _bloc;
  @override
  void initState() {
    _bloc = BlocProvider.of<SignUpBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
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
                            top: 50.scaled,
                            left: 100.scaled,
                            right: 100.scaled,
                          ),
                          child: Center(
                            child: Card(
                              child: Column(
                                children: [
                                  // Lottie.asset(LottiePath.welcome),
                                  SizedBox(height: 15.scaled),
                                  SizedBox(
                                    width: 400.scaled,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 30.scaled,
                                        ),
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
                                        SizedBox(
                                          width: 70.scaled,
                                        ),
                                        Center(
                                          child: AppText(
                                            StringManager.titleSignUp,
                                            AppTextStyles.title32Bold.copyWith(
                                              fontSize: 35,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: AppTextStyles
                                                  .fontMerriweather,
                                              color: AppColors.blueLight,
                                            ),
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
                                                const SignUpOnChangeFieldsEvent(),
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
                                              hintText: StringManager.hintEmail,
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
                                                const SignUpOnChangeFieldsEvent(),
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
                                              errorText: state.passwordException
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
                                            StringManager.passwordAgainField,
                                            AppTextStyles.body14Regular,
                                          ),
                                          SizedBox(
                                            height: 5.scaled,
                                          ),
                                          TextFormField(
                                            obscureText:
                                                _obscurePasswordAgainText,
                                            obscuringCharacter: StringManager
                                                .passwordHiddenChar,
                                            onChanged: (v) {
                                              _bloc.passwordAgainController
                                                  .add(v);
                                              _bloc.add(
                                                const SignUpOnChangeFieldsEvent(),
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
                                              hintText: StringManager
                                                  .passwordAgainField,
                                              hintStyle: AppTextStyles
                                                  .body16Regular
                                                  .copyWith(
                                                color: AppColors.lightGray,
                                              ),
                                              fillColor: AppColors.white
                                                  .withOpacity(.3),
                                              filled: true,
                                              errorText: state
                                                  .passwordAgainException
                                                  ?.toString(),
                                              errorStyle: AppTextStyles
                                                  .caption12Regular
                                                  .copyWith(
                                                color: AppColors.red,
                                              ),
                                              suffixIcon: IconButton(
                                                icon: Icon(
                                                  !_obscurePasswordAgainText
                                                      ? Icons.visibility
                                                      : Icons.visibility_off,
                                                  color:
                                                      !_obscurePasswordAgainText
                                                          ? AppColors.gray
                                                          : AppColors.lightGray,
                                                ),
                                                onPressed: () {
                                                  setState(() {
                                                    _obscurePasswordAgainText =
                                                        !_obscurePasswordAgainText;
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
                                    height: 70.scaled,
                                    width: 150.scaled,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10.scaled,
                                      ),
                                      child: AppButton(
                                        onTap: () {
                                          _bloc.add(
                                            const SignUpEvent
                                                .pressSignUpButton(),
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
