import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/app_icon.dart';
import '../../../utils/colors.dart';
import '../../business logic/controllers/course controller/free_course_controler.dart';
import 'free_course_details.dart';

class FreeCourseCard extends StatelessWidget {
  FreeCourseCard({super.key});
  final videoController = Get.put(VideoController());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
        height: 120.0,
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(
          bottom: 15.0,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            color: AppColor.primary,
            border: Border.all(width: 0.1),
            borderRadius: BorderRadius.circular(8.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Watch Free Webinar",
                  style: TextStyle(
                      color: AppColor.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () => Get.to(() => FreeCourseDetails()),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: const Row(
                      children: [
                        Text(
                          "Click Now",
                          style: TextStyle(color: AppColor.white, fontSize: 16),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: AppColor.white,
                          size: 20.0,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            Image.asset(
              AppIcon.computer,
              width: screenSize.width / 5,
            )
          ],
        ));
  }
}
