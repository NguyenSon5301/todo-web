import 'package:flutter/material.dart';

import '../../../../../common/common.dart';

typedef SubmitCallback = void Function();

class NotificationDialog extends StatefulWidget {
  final String? title;
  final String? description;
  final String? buttonTitleCancel;
  final String? buttonTitleSubmit;
  final bool isDismissible;
  final SubmitCallback onPressButtonSubmit;
  final Widget? descriptionWidget;
  final Widget? iconWidget;
  final bool shortButton;

  const NotificationDialog({
    required this.onPressButtonSubmit,
    this.title,
    this.description,
    this.buttonTitleCancel,
    this.buttonTitleSubmit,
    this.descriptionWidget,
    this.iconWidget,
    this.shortButton = true,
    this.isDismissible = true,
    Key? key,
  }) : super(key: key);

  @override
  State<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends State<NotificationDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => widget.isDismissible,
      child: Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 500.scaled),
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
              if (widget.iconWidget != null) ...[
                widget.iconWidget!,
                SizedBox(height: 5.scaled)
              ],
              if (widget.title != null)
                Padding(
                  padding: EdgeInsets.only(bottom: 4.scaled),
                  child: AppText(
                    widget.title,
                    AppTextStyles.title24Bold,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              if (widget.description != null)
                AppText(
                  widget.description,
                  AppTextStyles.body14Regular,
                  color: AppColors.gray,
                  textAlign: TextAlign.center,
                )
              else
                widget.descriptionWidget != null
                    ? widget.descriptionWidget!
                    : const SizedBox.shrink(),
              Padding(
                padding: EdgeInsets.only(top: 10.scaled),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (widget.buttonTitleCancel != null)
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 48.scaled,
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                            horizontal: 15,
                          ).scaled,
                          decoration: BoxDecoration(
                            color: AppColors.blueLight,
                            borderRadius: BorderRadius.circular(8.scaled),
                            gradient: AppColors.purpleGradient,
                          ),
                          alignment: Alignment.center,
                          child: AppText(
                            widget.buttonTitleCancel,
                            AppTextStyles.button16Medium,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    if (widget.buttonTitleCancel != null)
                      SizedBox(
                        width: 50.scaled,
                      ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                        widget.onPressButtonSubmit();
                      },
                      child: Container(
                        height: 48.scaled,
                        padding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 15,
                        ).scaled,
                        decoration: BoxDecoration(
                          color: AppColors.blueLight,
                          borderRadius: BorderRadius.circular(8.scaled),
                          gradient: AppColors.purpleGradient,
                        ),
                        alignment: Alignment.center,
                        child: AppText(
                          widget.buttonTitleSubmit,
                          AppTextStyles.button16Medium,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
