import 'package:flutter/material.dart';

import '../../common.dart';

class AppDialog extends StatelessWidget {
  final String? title;
  final String? description;
  final String? buttonTitle;
  final bool isDismissible;
  final VoidCallback? onPressButton;
  final Widget? descriptionWidget;
  final Widget? iconWidget;
  final bool shortButton;

  const AppDialog({
    required this.isDismissible,
    Key? key,
    this.title,
    this.description,
    this.buttonTitle,
    this.onPressButton,
    this.descriptionWidget,
    this.iconWidget,
    this.shortButton = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => isDismissible,
      child: Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 24.scaled),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.scaled),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 44,
            vertical: 30,
          ).scaled,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.scaled),
            color: AppColors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (iconWidget != null) ...[
                iconWidget!,
                SizedBox(height: 5.scaled)
              ],
              if (title != null)
                Padding(
                  padding: EdgeInsets.only(bottom: 4.scaled),
                  child: AppText(
                    title,
                    AppTextStyles.title24Bold,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              if (description != null)
                AppText(
                  description,
                  AppTextStyles.body14Regular,
                  color: AppColors.gray,
                  textAlign: TextAlign.center,
                )
              else
                descriptionWidget != null
                    ? descriptionWidget!
                    : const SizedBox.shrink(),
              if (buttonTitle != null) ...[
                SizedBox(height: 12.scaled),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: AppButton(
                    title: AppText(
                      buttonTitle,
                      AppTextStyles.button16Medium,
                      color: AppColors.white,
                    ),
                    onTap: onPressButton,
                    isShort: shortButton,
                  ),
                )
              ]
            ],
          ),
        ),
      ),
    );
  }
}
