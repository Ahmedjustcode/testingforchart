import 'package:flutter/cupertino.dart';
import 'package:flutter_charts/core/values/app_colors.dart';

class AppStyles {
  final titleStyle = const TextStyle(color: AppColors.primaryColor, fontSize: 20, fontWeight: FontWeight.w600);

  static const smallStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary2ColorWithLowOpacity,
  );

  static const mediumStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimaryColor,
  );
}
