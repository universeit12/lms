import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/utils/app_image.dart';
import '../../../style/text_style.dart';
import '../../../utils/colors.dart';
import '../../../widgets/backappbar.dart';
import '../../../widgets/small_button.dart';
import '../../business logic/controllers/course controller/course_details_controller.dart';
import '../course/widgets/instructor_card.dart';
import '../course/widgets/lesson_info_widget.dart';
import '../course/widgets/module_video_screen.dart';
import '../course/widgets/review_card.dart';

class CourseDetails extends StatelessWidget {
  final String courseId;

  final String? courseName;
  final String? courseImage;
  final controller = Get.put(CourseDetailsController());

  CourseDetails(
      {super.key, required this.courseId, this.courseName, this.courseImage}) {
    controller.fetchCourseDetails(courseId);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const Backappbar(
        title: 'Course Details',
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        final data = controller.courseDetails.value;
        return Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
          child: ListView(
            children: [
              ///Fetch Image to course aipi...

              Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10.0)),
                child: Image.network(
                  courseImage ?? '',
                  height: 130,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Image.asset(
                      'assets/images/error.png',
                      height: 150,
                      width: size.width / 2.5,
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),

              ///course name...
              Text(courseName ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 5,
                  style: AppTextStyle1(textColor: Colors.black, fontSize: 16)),

              const SizedBox(height: 20),

              ///
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.black12.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "৳ ${data.courseFee}",
                          style: const TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              decoration: TextDecoration.lineThrough,
                              fontWeight: FontWeight.bold,
                              decorationColor: Colors.red),
                        ),
                        Text(
                          "৳ ${data.courseFee}",
                          style: const TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              decorationColor: Colors.red),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const SmallButton(
                      text: 'Join 2nd Batch',
                      color: AppColor.white,
                      bgcolor: AppColor.red,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: LessonInfoWidget(
                              title: 'Rating',
                              subtitle: "${data.rating}",
                              icon: Icons.star_rate_outlined,
                            ),
                          ),
                          Expanded(
                            child: LessonInfoWidget(
                              title: 'Live Class',
                              subtitle: "${data.totalLiveClass}",
                              icon: Icons.video_camera_front,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: LessonInfoWidget(
                              title: 'Total Video',
                              subtitle: "${data.totalVideo}",
                              icon: Icons.live_tv,
                            ),
                          ),
                          Expanded(
                            child: LessonInfoWidget(
                              title: 'Total Project',
                              subtitle: "${data.totalProject}",
                              icon: Icons.work_outline,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
              Text("Course Plan", style: AppTextStyle1()),
              SizedBox(height: 10),
              for (int i = 0; i < 2; i++)
                Container(
                  clipBehavior: Clip.antiAlias,
                  padding: const EdgeInsets.all(10.0),
                  margin: const EdgeInsets.only(bottom: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(width: 0.5)),
                  child: Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      subtitle: const Text(
                          'learn a DART basic consept in this module'),
                      tilePadding: EdgeInsets.zero,
                      childrenPadding: EdgeInsets.zero,
                      title: Row(
                        children: [
                          const SmallButton(
                            text: 'Module 1',
                          ),
                          const Spacer(),
                          Text('Dart Basic',
                              style: AppTextStyle2(textColor: Colors.blue)),
                          const SizedBox(
                            height: 10.0,
                          )
                        ],
                      ),
                      trailing: const Icon(Icons.keyboard_arrow_down_rounded),
                      children: [
                        const Divider(),
                        for (int i = 0; i < 2; i++)
                          ListTile(
                              onTap: () {
                                Get.to(() => const ModuleVideoScreen());
                              },
                              contentPadding: EdgeInsets.zero,
                              leading: CircleAvatar(
                                backgroundColor:
                                    AppColor.primary.withOpacity(.1),
                                child: const Icon(
                                  Icons.video_call,
                                  color: AppColor.primary,
                                ),
                              ),
                              title: const Text('Flutter Basic Structure'),
                              subtitle: const Text('Class no - 3'))
                      ],
                    ),
                  ),
                ),

              const SizedBox(height: 20),
              Text("Course Instructor", style: AppTextStyle1()),
              const InstructorCard(),

              ///Description...
              const SizedBox(height: 20),
              Text("Description", style: AppTextStyle1()),
              Text(
                data.description ?? ' ',
              ),

              ///Review for students...
              const SizedBox(height: 20),
              Text("Reviews ", style: AppTextStyle1()),
              const ReviewCard(),
              const SizedBox(height: 100)
            ],
          ),
        );
      }),
    );
  }
}
