import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/course_card.dart';
import '../widgets/course_utils.dart';

class RecordCourseCard extends StatelessWidget {
  const RecordCourseCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < courseUtils.length; i++)
            CourseCard(
              ontap: () {
                Get.to(() => CourseCard(

                    ));
              },
              image: courseUtils[i]['image'],
              title: courseUtils[i]['title'],
              instuctorName: "Al Azad",
              sit: "Module- ${courseUtils[i]['course']}",
              courseFee: "5000",
            )
        ],
      ),
    );
  }
}
