import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../style/text_style.dart';
import '../../widgets/course_dialog.dart';
import '../controller/couse_controller_admin.dart';

class AllCourseAdmin extends StatelessWidget {
  AllCourseAdmin({super.key});
  final controller = Get.put(CouseControllerAdmin());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('All Course')),
        body: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          primary: false,
          itemBuilder: (_, index) {
            return Container(
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              padding: const EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                color: Colors.teal.withOpacity(0.8),
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 8.0,
                      offset: Offset(0, 4)),
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
                          'https://firebasestorage.googleapis.com/v0/b/curious-athlete-417715.appspot.com/o/Navy%20Blue%20Business%20Facebook%20Cover%20(5).png?alt=media&token=d01c8de3-c2de-4b7d-9cbd-2b597dda76b4',
                          height: 130,
                          fit: BoxFit.cover,
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
                          child: const Text(
                            "Batch No: ${'3'}",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
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
                        const Text(
                          'Course Name',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Instructor Name', style: AppTextStyle2()),
                        const SizedBox(height: 5.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              child: const Text(
                                "Batch No: ",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            IconButton(
                                onPressed: () {
                                  CourseDialog(
                                      context,
                                      'About Course',
                                      'Do you now delete/update course',
                                      "Update",
                                      "Delete", () {
                                    Navigator.pop(context);
                                  }, () {});
                                },
                                icon: const Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }
}
