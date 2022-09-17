import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    hintColor: AppColors.hint,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    brightness: Brightness.light,
    // primarySwatch: AppColors.primary,
    fontFamily: AppStrings.fontFamily,
    ///TextTheme
  );
}
