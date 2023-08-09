import 'package:flutter/painting.dart';

import '../../common.dart';

class AppTextStyles {
  static const fontMerriweather = 'Merriweather';
  static const fontCatamaran = 'Catamaran';
/* title */
  static final TextStyle title32Bold = TextStyle(
    fontFamily: fontCatamaran,
    fontSize: 32.scaled,
    color: AppColors.neutral,
    height: (52 / 32).scaled,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle title24Bold = TextStyle(
    fontFamily: fontCatamaran,
    fontSize: 24.scaled,
    color: AppColors.neutral,
    height: (36 / 24).scaled,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle title24Medium = TextStyle(
    fontFamily: fontCatamaran,
    fontSize: 24.scaled,
    color: AppColors.neutral,
    height: (36 / 24).scaled,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle title24Regular = TextStyle(
    fontFamily: fontCatamaran,
    fontSize: 24.scaled,
    color: AppColors.neutral,
    height: (36 / 24).scaled,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle title20Bold = TextStyle(
    fontFamily: fontCatamaran,
    fontSize: 20.scaled,
    color: AppColors.neutral,
    height: (32 / 20).scaled,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle title20Medium = TextStyle(
    fontFamily: fontCatamaran,
    fontSize: 20.scaled,
    color: AppColors.neutral,
    height: (32 / 20).scaled,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle title20Regular = TextStyle(
    fontFamily: fontCatamaran,
    fontSize: 20.scaled,
    color: AppColors.neutral,
    height: (32 / 20).scaled,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle title18Bold = TextStyle(
    fontFamily: fontCatamaran,
    fontSize: 18.scaled,
    color: AppColors.neutral,
    height: (24 / 18).scaled,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle title18Medium = TextStyle(
    fontFamily: fontCatamaran,
    fontSize: 18.scaled,
    color: AppColors.neutral,
    height: (24 / 18).scaled,
    fontWeight: FontWeight.w500,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle title18Regular = TextStyle(
    fontFamily: fontCatamaran,
    fontSize: 18.scaled,
    color: AppColors.neutral,
    height: (24 / 18).scaled,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

/* body */
  static final TextStyle body16Bold = TextStyle(
    fontFamily: fontMerriweather,
    fontSize: 16.scaled,
    color: AppColors.neutral,
    height: (24 / 16).scaled,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle body16Regular = TextStyle(
    fontFamily: fontMerriweather,
    fontSize: 16.scaled,
    color: AppColors.neutral,
    height: (24 / 16).scaled,
    fontWeight: FontWeight.w300,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal, decoration: TextDecoration.none,
  );

  static final TextStyle body14Medium = TextStyle(
    fontFamily: fontMerriweather,
    fontSize: 14.scaled,
    color: AppColors.neutral,
    height: (20 / 14).scaled,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle body14Regular = TextStyle(
    fontFamily: fontMerriweather,
    fontSize: 14.scaled,
    color: AppColors.neutral,
    height: (20 / 14).scaled,
    fontWeight: FontWeight.w300,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

/* button */
  static final TextStyle button18Medium = TextStyle(
    fontFamily: fontMerriweather,
    fontSize: 18.scaled,
    color: AppColors.neutral,
    height: (24 / 18).scaled,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle button16Medium = TextStyle(
    fontFamily: fontMerriweather,
    fontSize: 16.scaled,
    color: AppColors.neutral,
    height: (24 / 16).scaled,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle button18Bold = TextStyle(
    fontFamily: fontMerriweather,
    fontSize: 18.scaled,
    color: AppColors.neutral,
    height: (24 / 16).scaled,
    fontWeight: FontWeight.w800,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

/* other */

  static final TextStyle heading32Bold = TextStyle(
    fontFamily: fontMerriweather,
    fontSize: 32.scaled,
    color: AppColors.neutral,
    height: (52 / 32).scaled,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle caption12Medium = TextStyle(
    fontFamily: fontMerriweather,
    fontSize: 12.scaled,
    color: AppColors.neutral,
    height: (16 / 12).scaled,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle caption12Regular = TextStyle(
    fontFamily: fontMerriweather,
    fontSize: 12.scaled,
    color: AppColors.neutral,
    height: (16 / 12).scaled,
    fontWeight: FontWeight.w300,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle caption10Regular = TextStyle(
    fontFamily: fontMerriweather,
    fontSize: 10.scaled,
    color: AppColors.neutral,
    height: (16 / 10).scaled,
    fontWeight: FontWeight.w300,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle label14Medium = TextStyle(
    fontFamily: fontMerriweather,
    fontSize: 14.scaled,
    color: AppColors.neutral,
    height: (20 / 14).scaled,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );

  static final TextStyle label12Medium = TextStyle(
    fontFamily: fontMerriweather,
    fontSize: 12.scaled,
    color: AppColors.neutral,
    height: (16 / 12).scaled,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    // package: DomainService.isDev ? null : StringManager.package,
    leadingDistribution: TextLeadingDistribution.even,
    fontStyle: FontStyle.normal,
  );
}
