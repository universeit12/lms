import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/style/toast_style.dart';
import '../../../style/text_style.dart';
import '../../../utils/colors.dart';
import '../../../widgets/backappbar.dart';
import '../../../widgets/small_button.dart';
import '../../business logic/controllers/course controller/free_course_controler.dart';

class FreeCourseDetails extends StatelessWidget {
  FreeCourseDetails({super.key});
  final controller = Get.put(VideoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: const Backappbar(title: 'Free Webinar'),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (_, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    children: [
                      /// Course Images....
                      Container(
                        height: 120.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.0),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/course/ostad_flutter.jpg'),
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(height: 5),

                      ///Course Name...
                      Text('ফ্লটার অ্যাপস ডেভেলপমেন্ট শিখুন এক কোর্সেই',
                          style: AppTextStyle1(
                              textColor: Colors.black, fontSize: 14.0)),
                      const SizedBox(height: 5),

                      ///Webinar Time...
                      Row(
                        children: [
                          const Icon(Icons.date_range),
                          Text(' Friday, 16 Septembar, 09:00 PM',
                              style: AppTextStyle2(textColor: Colors.blue)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      SmallButton(
                        text: 'See Details',
                        ontap: () {
                          SuccessToast('Comming soon');
                        },
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
