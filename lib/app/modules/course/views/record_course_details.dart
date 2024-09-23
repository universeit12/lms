import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../style/text_style.dart';
import '../../../../widgets/backappbar.dart';

class RecordCourseDetails extends StatelessWidget {
  final data;
  const RecordCourseDetails(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: Backappbar(
        title: data['title'],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(data['image'],
                    height: 90.h,
                    width: screenSize.width / 2.5,
                    fit: BoxFit.cover),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['title'], style: AppTextStyle1()),
                      Text('Module- 16', style: AppTextStyle2())
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Text(
              data['description'],
            ),
            Divider(height: 15.h),
            SizedBox(height: 10.h),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                _customtag('Modules', "assets/images/icon/module.png", () {}),
                _customtag(
                    'Assignment', "assets/images/icon/recourse.png", () {}),
                _customtag(
                    'Recorded', "assets/images/icon/recorded.png", () {}),
                _customtag(
                    'Recourse', "assets/images/icon/download.png", () {}),
                _customtag(
                    'Certificate', "assets/images/icon/certificate.png", () {}),
              ],
            )
          ],
        ),
      ),
      bottomSheet: Container(
        height: 100,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.blue.withOpacity(0.1)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0))),
        child: Center(
          child: Text(
            'This is a bottom sheet',
            style: TextStyle(color: Colors.white, fontSize: 18.sp),
          ),
        ),
      ),
    );
  }

  _customtag(text, image, ontap) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 80,
        width: 100,
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
