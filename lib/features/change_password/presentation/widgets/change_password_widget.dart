import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/background_art.dart';
import '../../../../common/common.dart';
import '../../../../common/constants/constants.dart';
import '../../../../utils/utils.dart';
import '../bloc/change_password_bloc.dart';

class ChangePasswordWidget extends StatefulWidget {
  const ChangePasswordWidget({super.key});

  @override
  State<ChangePasswordWidget> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePasswordWidget> {
  bool _obscureOldPasswordText = true;
  bool _obscureNewPasswordText = true;

  bool _obscureNewPasswordAgainText = true;

  late ChangePasswordBloc _bloc;
  @override
  void initState() {
    _bloc = BlocProvider.of<ChangePasswordBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
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
                            child: Column(
                              children: [
                                SizedBox(height: 15.scaled),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    AppText(
                                      StringManager.titleChangePassword,
                                      AppTextStyles.title32Bold.copyWith(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w600,
                                        fontFamily:
                                            AppTextStyles.fontMerriweather,
                                      ),
                                    ),
                                  ],
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
                                          StringManager.oldPassword,
                                          AppTextStyles.body14Regular,
                                        ),
                                        SizedBox(
                                          height: 5.scaled,
                                        ),
                                        TextFormField(
                                          controller:
                                              _bloc.passwordOldController,
                                          obscureText: _obscureOldPasswordText,
                                          obscuringCharacter:
                                              StringManager.passwordHiddenChar,
                                          onChanged: (v) {
                                            _bloc.add(
                                              const ChangePasswordOnChangeFieldsEvent(),
                                            );
                                          },
                                          style: AppTextStyles.body16Regular
                                              .copyWith(
                                            color: AppColors.black,
                                          ),
                                          autofocus: false,
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.fromLTRB(
                                              20,
                                              15,
                                              20,
                                              15,
                                            ).scaled,
                                            hintText: StringManager.oldPassword,
                                            hintStyle: AppTextStyles
                                                .body16Regular
                                                .copyWith(
                                              color: AppColors.lightGray,
                                            ),
                                            fillColor:
                                                AppColors.white.withOpacity(.3),
                                            filled: true,
                                            errorText: state
                                                .passwordOldException
                                                ?.toString(),
                                            errorStyle: AppTextStyles
                                                .caption12Regular
                                                .copyWith(
                                              color: AppColors.red,
                                            ),
                                            suffixIcon: IconButton(
                                              icon: Icon(
                                                !_obscureOldPasswordText
                                                    ? Icons.visibility
                                                    : Icons.visibility_off,
                                                color: !_obscureOldPasswordText
                                                    ? AppColors.gray
                                                    : AppColors.lightGray,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  _obscureOldPasswordText =
                                                      !_obscureOldPasswordText;
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
                                SizedBox(height: 15.scaled),
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
                                          StringManager.newPassword,
                                          AppTextStyles.body14Regular,
                                        ),
                                        SizedBox(
                                          height: 5.scaled,
                                        ),
                                        TextFormField(
                                          controller:
                                              _bloc.passwordNewController,
                                          obscureText: _obscureNewPasswordText,
                                          obscuringCharacter:
                                              StringManager.passwordHiddenChar,
                                          onChanged: (v) {
                                            _bloc.add(
                                              const ChangePasswordOnChangeFieldsEvent(),
                                            );
                                          },
                                          style: AppTextStyles.body16Regular
                                              .copyWith(
                                            color: AppColors.black,
                                          ),
                                          autofocus: false,
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.fromLTRB(
                                              20,
                                              15,
                                              20,
                                              15,
                                            ).scaled,
                                            hintText: StringManager.newPassword,
                                            hintStyle: AppTextStyles
                                                .body16Regular
                                                .copyWith(
                                              color: AppColors.lightGray,
                                            ),
                                            fillColor:
                                                AppColors.white.withOpacity(.3),
                                            filled: true,
                                            errorText: state
                                                .passwordNewException
                                                ?.toString(),
                                            errorStyle: AppTextStyles
                                                .caption12Regular
                                                .copyWith(
                                              color: AppColors.red,
                                            ),
                                            suffixIcon: IconButton(
                                              icon: Icon(
                                                !_obscureNewPasswordText
                                                    ? Icons.visibility
                                                    : Icons.visibility_off,
                                                color: !_obscureNewPasswordText
                                                    ? AppColors.gray
                                                    : AppColors.lightGray,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  _obscureNewPasswordText =
                                                      !_obscureNewPasswordText;
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
                                  height: 15.scaled,
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
                                          StringManager.newPasswordAgain,
                                          AppTextStyles.body14Regular,
                                        ),
                                        SizedBox(
                                          height: 5.scaled,
                                        ),
                                        TextFormField(
                                          controller:
                                              _bloc.passwordNewAgainController,
                                          obscureText:
                                              _obscureNewPasswordAgainText,
                                          obscuringCharacter:
                                              StringManager.passwordHiddenChar,
                                          onChanged: (v) {
                                            _bloc.add(
                                              const ChangePasswordOnChangeFieldsEvent(),
                                            );
                                          },
                                          style: AppTextStyles.body16Regular
                                              .copyWith(
                                            color: AppColors.black,
                                          ),
                                          autofocus: false,
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.fromLTRB(
                                              20,
                                              15,
                                              20,
                                              15,
                                            ).scaled,
                                            hintText:
                                                StringManager.newPasswordAgain,
                                            hintStyle: AppTextStyles
                                                .body16Regular
                                                .copyWith(
                                              color: AppColors.lightGray,
                                            ),
                                            fillColor:
                                                AppColors.white.withOpacity(.3),
                                            filled: true,
                                            errorText: state
                                                .passwordNewAgainException
                                                ?.toString(),
                                            errorStyle: AppTextStyles
                                                .caption12Regular
                                                .copyWith(
                                              color: AppColors.red,
                                            ),
                                            suffixIcon: IconButton(
                                              icon: Icon(
                                                !_obscureNewPasswordAgainText
                                                    ? Icons.visibility
                                                    : Icons.visibility_off,
                                                color:
                                                    !_obscureNewPasswordAgainText
                                                        ? AppColors.gray
                                                        : AppColors.lightGray,
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  _obscureNewPasswordAgainText =
                                                      !_obscureNewPasswordAgainText;
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
                                          const ChangePasswordEvent
                                              .pressChangePasswordButton(),
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
