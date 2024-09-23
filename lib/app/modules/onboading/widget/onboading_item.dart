import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../../../utils/colors.dart';


PageViewModel onbodingView({
  required String title,
  required String body,
  required ImageProvider image,
}) {
  return PageViewModel(
    title: title,
    body: body,
    image: Padding(
      padding: EdgeInsets.only(top: 100, bottom: 20),
      child: Image(
        image: image,
        height: 300,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    ),
    decoration: PageDecoration(
      imageFlex: 1,
      imagePadding: EdgeInsets.all(24.0),
      titleTextStyle: TextStyle(
          fontSize: 24.0, fontWeight: FontWeight.bold, color: AppColor.primary),
      bodyTextStyle: TextStyle(fontSize: 16.0, color: AppColor.black2),
    ),
  );
}
