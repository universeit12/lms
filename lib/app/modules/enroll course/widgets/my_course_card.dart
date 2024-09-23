import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../style/text_style.dart';
import '../../../../utils/colors.dart';
import '../../../../widgets/custom_see_all.dart';
import '../../../../widgets/small_button.dart';
import '../../course/widgets/course_utils.dart';
import '../views/my_course_details.dart';

class MyCourseCard extends StatelessWidget {
  const MyCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomSeeAll(
          title: 'My Courses',
          viewall: '',
        ),
        const SizedBox(height: 15.0),
        for (int i = 0; i < 2; i++)
          InkWell(
            onTap: () => Get.to(() => MyCourseDetails()),
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              decoration: BoxDecoration(
                color: AppColor.white,
                border: Border.all(width: 0.1),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                children: [
                  Image.asset(
                    courseUtils[i]['image'] ?? 'assets/default_image.png',
                    width: 100,
                    height: 80,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 15.0),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          courseUtils[i]['title'] ?? 'Course Title',
                          style: AppTextStyle1(
                              fontSize: 16.0, textColor: Colors.black),
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SmallButton(
                              text: 'Ongoing',
                            ),
                            SmallButton(
                              text: 'Batch 3',
                              bgcolor: Colors.blueAccent.withOpacity(0.1),
                              color: Colors.black,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }
}
