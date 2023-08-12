import 'package:flutter/material.dart';

import '../../../../../common/common.dart';
import '../../constants/constants.dart';

class DeleteTaskDialog extends StatefulWidget {
  final String title;
  const DeleteTaskDialog({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  State<DeleteTaskDialog> createState() => _DeleteTaskDialogState();
}

class _DeleteTaskDialogState extends State<DeleteTaskDialog> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: 600).scaled,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.scaled),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20).scaled,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SizedBox(
              width: 90.scaled,
              child: const Icon(
                Icons.delete,
                color: AppColors.red,
              ),
            ),
            SizedBox(height: 12.scaled),
            AppText(
              'Do you want to delete this task: ${widget.title}?',
              AppTextStyles.body14Regular,
              color: AppColors.gray,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 12.scaled),
            // AppText(
            //   StringManager.deleteTaskCaption2,
            //   AppTextStyles.body14Regular,
            //   color: AppColors.gray,
            //   textAlign: TextAlign.center,
            // ),
            SizedBox(height: 25.scaled),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buttonCustom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5)
                          .scaled,
                  title: AppText(
                    StringManager.cancelButton,
                    AppTextStyles.button16Medium.copyWith(
                      color: AppColors.white,
                    ),
                    applyHeightTop: true,
                  ),
                  onTap: () {
                    AppNavigator.fromContext(context).pop(callback: false);
                  },
                ),
                SizedBox(
                  width: 30.scaled,
                ),
                _buttonCustom(
                  gradient: AppColors.blueGradient,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5)
                          .scaled,
                  title: AppText(
                    StringManager.confirmButton,
                    AppTextStyles.button16Medium.copyWith(
                      color: AppColors.white,
                    ),
                    applyHeightTop: true,
                  ),
                  onTap: () {
                    AppNavigator.fromContext(context).pop(callback: true);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buttonCustom({
    required VoidCallback onTap,
    required Widget title,
    required EdgeInsetsGeometry padding,
    Gradient? gradient,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: AppColors.lightGray,
          borderRadius: BorderRadius.circular(4.scaled),
          gradient: gradient,
        ),
        alignment: Alignment.center,
        child: title,
      ),
    );
  }
}
