import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../widgets/small_button.dart';
import '../course/widgets/course_utils.dart';
import 'live_course_details.dart';

class CourseCard extends StatelessWidget {
  const CourseCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < courseUtils.length; i++)
            InkWell(
              onTap: () {
                Get.to(() => LiveCourseDetails(
                      courseUtils[i],
                    ));
              },
              child: Container(
                width: 240,
                clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.only(right: 10),
                padding: EdgeInsets.only(bottom: 15),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    border: Border.all(width: 0.1),
                    borderRadius: BorderRadius.circular(8.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(color: Colors.blue),
                      child: Image.asset(
                        courseUtils[i]['image'],
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 5.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            courseUtils[i]['title'],
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Instuctor: Al Azad",
                            style: TextStyle(
                                fontSize: 14.0, color: Colors.blueAccent),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SmallButton(
                                text: '10',
                              ),
                              SmallButton(
                                text: "\$500}",
                                bgcolor: Colors.black54,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
