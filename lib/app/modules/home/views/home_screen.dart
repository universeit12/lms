import 'package:flutter/material.dart';
import 'package:lms/app/modules/all%20course/course_card.dart';
import 'package:lms/app/modules/feedback/feedback_screen.dart';
import 'package:lms/app/modules/footer/custom_footer.dart';
import 'package:lms/app/modules/successfull%20student/successfull_student_card.dart';
import '../../../../utils/colors.dart';
import '../../enroll course/widgets/my_course_card.dart';
import '../../webinar/free_course_card.dart';
import '../../teacher/views/teacher_card.dart';
import '../widgets/home_appbar.dart';
import '../widgets/slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///Custom Home AppBar...
                  const HomeHeader(),
                  const SizedBox(height: 15),

                  ///Custom Slider...
                  const Slider1(),
                  const SizedBox(height: 20.0),

                  ///Free Course...
                  FreeCourseCard(),
                  const SizedBox(height: 20.0),

                  ///my course card...
                  const MyCourseCard(),
                  const SizedBox(height: 20),

                  ///all course card...
                  CourseCard(),
                  const SizedBox(height: 20),

                  ///Teacher List
                   TeacherCard(),
                  const SizedBox(height: 20),

                  FeedbackCard(),
                  const SizedBox(height: 20),
                  SuccessfullStudentCard()
                ],
              ),
            ),
            const SizedBox(height: 20),
            CustomFooter()
          ],
        ),
      ),
    );
  }
}
