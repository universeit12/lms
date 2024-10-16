import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/app/business%20logic/controllers/teacher/teacher_controller.dart';
import 'package:lms/style/text_style.dart';
import '../../../../widgets/custom_see_all.dart';
import 'teacher_details.dart';
import '../utils/teacher_utils.dart';

class TeacherCard extends StatelessWidget {
  TeacherCard({super.key});
  final controller = Get.put(TeacherController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        ///Header Title.....
        const SizedBox(height: 20.0),
        controller.teacherList.isNotEmpty
            ? const CustomSeeAll(
                title: 'Our Expert Instructor',
                viewall: '',
              )
            : const SizedBox(),
        const SizedBox(height: 10),

        ///Teacher Card....
        Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          final data = controller.teacherList;
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < data.length; i++)
                  InkWell(
                    onTap: () {
                      Get.to(() => TeacherDetails());
                    },
                    child: Container(
                        height: size.height / 3.5,
                        width: size.width / 2.4,
                        clipBehavior: Clip.antiAlias,
                        alignment: Alignment.bottomCenter,
                        margin:
                            const EdgeInsets.only(bottom: 10.0, right: 15.0),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.9),
                            borderRadius: BorderRadius.circular(8.0),
                            image: DecorationImage(
                                image: NetworkImage(data[i].instructorImg ??
                                    'assets/images/error.png'),
                                fit: BoxFit.cover)),
                        child: Container(
                          width: double.infinity,
                          height: size.height / 14,
                          color: Colors.black54,
                          child: Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(data[i].instructorName ?? '',
                                        overflow: TextOverflow.ellipsis,
                                        style: AppTextStyle1()),
                                    Text(
                                      data[i].instructorRole ?? '',
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          color: Colors.white70,
                                          fontSize: 10.0),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                  )
              ],
            ),
          );
        })
      ],
    );
  }
}
