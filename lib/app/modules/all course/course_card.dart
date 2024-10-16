import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/app/modules/Error%20Screen/error_screen.dart';
import 'package:lms/app/modules/all%20course/course_details.dart';
import 'package:lms/style/text_style.dart';
import 'package:lms/utils/app_image.dart';

import '../../../widgets/custom_see_all.dart';
import '../../business logic/controllers/course controller/all_course_controller.dart';

class CourseCard extends StatelessWidget {
  CourseCard({super.key});
  final controller = Get.put(AllCourseController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        children: [
          const CustomSeeAll(
            title: 'Top Courses',
            viewall: '',
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 220,
            child: ListView.builder(
              itemCount: controller.courseList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              primary: false,
              itemBuilder: (_, index) {
                final data = controller.courseList[index];
                return InkWell(
                  onTap: () {
                    if (data.Id == null) {
                      Get.to(() => const ErrorScreen());
                    } else {
                      Get.to(() => CourseDetails(
                            courseId: data.Id ?? '',
                            courseName: data.courseName,
                            courseImage: data.courseImg,
                          ));
                    }
                  },
                  child: Container(
                    width: 240,
                    clipBehavior: Clip.antiAlias,
                    margin: const EdgeInsets.only(right: 15),
                    padding: const EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                      color: Colors.teal.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8.0,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(color: Colors.blue),
                              child: Image.network(
                                data.courseImg ?? defautltImage, // courseImg null হলে defaultImage দেখাবে
                                height: 130,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Image.asset(
                                    'assets/images/error.png',
                                    height: 130,
                                    fit: BoxFit.cover,
                                  );
                                },
                              ),
                            ),

                            Positioned(
                              bottom: 5,
                              child: Container(
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Colors.red,
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                child: Text(
                                  "Batch No: ${data.batchNo ?? 'N/A'}",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5.0),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                data.courseName ?? 'Course Name',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(data.instructorName ?? 'Instructor Name',
                                  style: AppTextStyle2()),
                              const SizedBox(height: 5.0),
                              Container(
                                width: double.infinity,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.black54,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 2),
                                child: Text(
                                  "Batch No: ${data.batchNo ?? 'N/A'}",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: const TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      );
    });
  }
}
