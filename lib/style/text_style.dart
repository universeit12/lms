import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';


TextStyle AppTextStyle1(
    {Color? textColor, FontWeight? fontWeight, double? fontSize}) {
  return TextStyle(
    fontSize: fontSize ?? 22.sp,
    color: textColor ?? AppColor.primary,
    fontWeight: fontWeight ?? FontWeight.bold,
    fontFamily: "robotomono",
  );
}

TextStyle AppTextStyle2(
    {Color? textColor, FontWeight? fontWeight, double? fontSize}) {
  return TextStyle(
    fontSize: fontSize ?? 15.sp,
    color: textColor ?? Colors.black.withOpacity(0.6),
    fontWeight: fontWeight ?? FontWeight.w500,
    fontFamily: "robotomono",
  );
}
