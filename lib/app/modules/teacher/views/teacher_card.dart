import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/style/text_style.dart';
import '../../../../utils/app_icon.dart';
import 'teacher_details.dart';
import '../utils/teacher_utils.dart';

class TeacherCard extends StatelessWidget {
  const TeacherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20.0),
        Text(
          'Our expert instructor',
          style: AppTextStyle1(),
        ),
        Text(
          textAlign: TextAlign.center,
          'They efficiently serve large number of students on our platform',
          style: AppTextStyle2(fontSize: 12),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < teacherUtils.length; i++)
                InkWell(
                  onTap: () {
                    Get.to(() => TeacherDetails(
                          data: teacherUtils[i],
                        ));
                  },
                  child: Container(
                      height: 230,
                      width: 170.0,
                      clipBehavior: Clip.antiAlias,
                      alignment: Alignment.bottomCenter,
                      margin: const EdgeInsets.only(
                          bottom: 10.0, top: 15, right: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.9),
                          border: Border.all(width: 0.1),
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              image: AssetImage(teacherUtils[i]['image']),
                              fit: BoxFit.cover)),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        color: Colors.black54,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  teacherUtils[i]['name'],
                                  style: const TextStyle(color: Colors.white),
                                ),
                                Text(
                                  teacherUtils[i]['position'],
                                  style: const TextStyle(
                                      color: Colors.white70, fontSize: 10.0),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  AppIcon.fb,
                                  height: 25,
                                  width: 25,
                                ),
                                const SizedBox(width: 10.0),
                                Image.asset(
                                  AppIcon.insta,
                                  height: 25,
                                  width: 25,
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                )
            ],
          ),
        )
      ],
    );
  }
}
