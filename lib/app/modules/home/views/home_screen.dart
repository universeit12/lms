import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/app/modules/all%20course/course_card.dart';
import 'package:lms/app/modules/feedback/feedback_screen.dart';
import '../../../../style/text_style.dart';
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
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height / 4.5,
              decoration: BoxDecoration(
                color: AppColor.primary,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///Custom Home AppBar...
                  HomeAppBar(),
                  SizedBox(height: 5.0),

                  ///Custom Slider...
                  Slider1(),

                  ///Free Course...
                  FreeCourseCard(),
                  Divider(color: Colors.blueAccent),
                  SizedBox(height: 10.0),

                  ///Custom My Course...
                  MyCourseCard(),
                  Divider(color: Colors.blueAccent),
                  SizedBox(height: 10),

                  ///Custom Live Course...
                  Text(
                    textAlign: TextAlign.center,
                    'Top Course',
                    style: AppTextStyle1(),
                  ),

                  SizedBox(height: 10),
                  CourseCard(),
                  SizedBox(height: 20),

                  /*       ///Custom Recorded Course...
                  CustomSeeAll(
                    title: 'Recorded Courses',
                    color: Colors.green,
                    ontap: () => Get.to(() => ClassJoin()),
                  ),
                  SizedBox(height: 10),
                  RecordCourseCard(),*/

                  ///Teacher List
                  TeacherCard(),
                  SizedBox(height: 20),
                  FeedbackScreen()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
