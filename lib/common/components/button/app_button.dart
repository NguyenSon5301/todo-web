import 'package:flutter/material.dart';

import '../../colors/app_color.dart';
import '../../scale/scale.dart';

class AppButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget title;
  final bool disable;
  final bool isShort;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;

  const AppButton({
    required this.title,
    Key? key,
    this.onTap,
    this.disable = false,
    this.isShort = false,
    this.margin,
    this.width,
    this.height,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disable ? null : onTap,
      child: Container(
        width: width ?? (isShort ? 162.scaled : double.infinity),
        height: height,
        padding: padding ??
            const EdgeInsets.symmetric(vertical: 14, horizontal: 15).scaled,
        margin: margin,
        decoration: BoxDecoration(
          color: disable ? AppColors.purple.withOpacity(.5) : null,
          borderRadius: BorderRadius.circular(8.scaled),
          gradient: disable ? null : AppColors.purpleGradient,
        ),
        alignment: Alignment.center,
        child: title,
      ),
    );
  }
}
