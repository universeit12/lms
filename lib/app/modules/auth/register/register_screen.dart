import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lms/app/modules/auth/register/student_signup.dart';
import 'package:lms/app/modules/auth/register/teacher_signup.dart';
import '../../../../style/text_style.dart';
import '../../../../utils/app_image.dart';
import '../../../business logic/controllers/auth controller/register_controller.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final controller = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImage.appLogo, width: size.width / 2.5),
                  SizedBox(height: 5.h),
                  Text('Register Now!', style: AppTextStyle1()),
                  SizedBox(height: 30.h),
                  const TabBar(
                      isScrollable: true,
                      labelStyle: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      tabAlignment: TabAlignment.start,
                      labelPadding: EdgeInsets.symmetric(horizontal: 20),
                      dividerColor: Colors.transparent,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Colors.blue,
                      tabs: [
                        Tab(text: "Student"),
                        Tab(text: "Teacher"),
                      ]),
                  const SizedBox(
                    height: 15,
                  ),
                  Flexible(
                      flex: 1,
                      child: TabBarView(
                          children: [StudentSignup(), TeacherSignup()]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
