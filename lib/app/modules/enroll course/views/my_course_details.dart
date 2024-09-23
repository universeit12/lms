import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/app_icon.dart';
import '../../../../style/text_style.dart';
import '../../../../utils/app_image.dart';
import '../../../../widgets/backappbar.dart';
import '../widgets/build_course_card.dart';
import 'module_screen.dart';
import '../../resourse/views/resourse_screen.dart';
import 'assignment_screen.dart';
import 'certificate_screen.dart';

class MyCourseDetails extends StatelessWidget {
  const MyCourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const Backappbar(
        title: "Flutter App Development",
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: ListView(
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
              child: Image.asset(
                AppImage.flutterCourse,
                height: 150.0,
                width: screenSize.width / 2.5,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Text('Flutter App Development With Rabbil Hasan',
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
                style: AppTextStyle1(textColor: Colors.black)),
            Text('Instructor: Rabbil Hasan & Al Azad ',
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
                style: AppTextStyle2(
                  fontSize: 16.0,
                )),
            SizedBox(height: 10),
            const Divider(
              height: 15,
              color: Colors.blue,
            ),
            const SizedBox(height: 10.0),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              alignment: WrapAlignment.center,
              children: [
                _customtag('Modules', AppIcon.module, () {
                  Get.to(() => const ModuleScreen());
                }),
                _customtag('Assignment', AppIcon.assignment, () {
                  Get.to(() => AssignmentScreen());
                }),
                _customtag('Recourse', AppIcon.resourse, () {
                  Get.to(() => const ResourseScreen());
                }),
                _customtag('Certificate', AppIcon.certificate, () {
                  Get.to(() => const CertificateScreen());
                }),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            BuildCourseCard(
              title: 'Notice Board',
              image: Image.asset(
                'assets/icon/notice.png',
                height: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _customtag(text, image, ontap) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 120,
        width: 140,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(width: 0.1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 40,
            ),
            Text(text, style: AppTextStyle2())
          ],
        ),
      ),
    );
  }
}
