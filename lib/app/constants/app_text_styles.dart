import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppFontSize {
  static const double fontTextTitle = 22.0;
  static const double fontTextBig = 22.0;
  static const double fontText = 16.0;
  static const double fontTextSmall = 12.0;
  static const double fontExtraSmall = 8.0;
  static const double fontTextExtraBig = 31;
  static const double fontErrorText = 14;

  static const double fontHeight = 1.2;
}

class AppTextStyles {
  AppTextStyles._();

  static String get fontJoseFin => 'Josefin';
  static String get fontRoboto => 'Roboto';

  static TextStyle get joseFinBold => TextStyle(
    height: AppFontSize.fontHeight,
    fontFamily: fontJoseFin,
    color: AppColors.text,
    fontWeight: FontWeight.w700,
    fontSize: AppFontSize.fontText,
  );

  static TextStyle get normalMedium => TextStyle(
    height: AppFontSize.fontHeight,
    fontFamily: fontRoboto,
    color: AppColors.text,
    fontWeight: FontWeight.w500,
    fontSize: AppFontSize.fontText,
  );

  static TextStyle get normalBold => normalMedium.copyWith(
    fontSize: AppFontSize.fontText,
    fontWeight: FontWeight.w700,
  );

  static TextStyle get normalBoldBlack => normalMedium.copyWith(
    fontSize: AppFontSize.fontText,
    fontWeight: FontWeight.w900,
  );

  static TextStyle get normalRegular => normalMedium.copyWith(
    fontSize: AppFontSize.fontText,
    fontWeight: FontWeight.w400,
  );

}
