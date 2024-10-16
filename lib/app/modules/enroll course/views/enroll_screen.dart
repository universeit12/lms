import 'package:flutter/material.dart';
import 'package:lms/app/modules/enroll%20course/widgets/my_course_card.dart';
import 'package:lms/utils/colors.dart';

class EnrollScreen extends StatelessWidget {
  const EnrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColor.bgColor,
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(children: [MyCourseCard()]),
        )));
  }
}
