import 'dart:io';

import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String? text;
  final TextStyle style;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final bool showTooltip;
  final bool applyHeightTop;
  final bool applyHeightBottom;

  const AppText(
    this.text,
    this.style, {
    this.color,
    this.textAlign,
    this.overflow,
    this.maxLines,
    this.showTooltip = false,
    this.applyHeightTop = false,
    this.applyHeightBottom = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = style.copyWith(color: color);

    final defaultTextStyle = DefaultTextStyle.of(context);

    final child = Text(
      text ?? '',
      style: textStyle,
      textScaleFactor: 1.0,
      textAlign: textAlign ?? defaultTextStyle.textAlign,
      overflow: overflow ?? defaultTextStyle.overflow,
      maxLines: maxLines ?? defaultTextStyle.maxLines,
      textHeightBehavior: TextHeightBehavior(
        leadingDistribution: TextLeadingDistribution.even,
        applyHeightToFirstAscent: applyHeightTop,
        applyHeightToLastDescent: applyHeightBottom,
      ),
    );

    if (showTooltip) {
      return Tooltip(
        message: text,
        child: child,
      );
    }

    return child;
  }
}
