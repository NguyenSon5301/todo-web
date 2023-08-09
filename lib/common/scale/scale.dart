import 'dart:developer';

import 'package:flutter/material.dart';

class AppScale {
  // Private constructor
  AppScale._();

  // Singleton
  static final instance = AppScale._();

  // Properties
  static const maxScaleFactor = 1.2;
  static const minScaleFactor = 0.8;

  Size globalSize = Size.zero;
  double scaleFactor = 1;
  // iphone 13
  final designSize = const Size(375, 812);

  // Public functions
  void init({required Size screenSize}) {
    if (screenSize == Size.zero || globalSize == screenSize) {
      return;
    }

    log('Scale - Initializing size and scaling for base common...');
    globalSize = screenSize;
    log('Scale - Screen size: $globalSize');
    scaleFactor = (globalSize.shortestSide / designSize.shortestSide).clamp(
      minScaleFactor,
      maxScaleFactor,
    );
    log('Scale - Size Scale Factor: $scaleFactor');
  }
}

extension ScaleDoubleX on double {
  double get scaled => this * AppScale.instance.scaleFactor;
}

extension ScaleIntX on int {
  double get scaled => this * AppScale.instance.scaleFactor;
}

extension ScaleSizeX on Size {
  Size get scaled => this * AppScale.instance.scaleFactor;
}

extension ScaleEdgeInsetsX on EdgeInsets {
  EdgeInsets get scaled => copyWith(
        left: left.scaled,
        right: right.scaled,
        top: top.scaled,
        bottom: bottom.scaled,
      );
}
