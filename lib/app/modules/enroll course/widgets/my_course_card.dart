import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../style/text_style.dart';
import '../../../../utils/colors.dart';
import '../../../../widgets/custom_see_all.dart';
import '../../course/widgets/course_utils.dart';
import '../views/my_course_details.dart';

class MyCourseCard extends StatelessWidget {
  const MyCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomSeeAll(
          title: 'My Courses',
          viewall: '',
        ),
        const SizedBox(height: 15.0),
        for (int i = 0; i < 2; i++)
          InkWell(
            onTap: () => Get.to(() => const MyCourseDetails()),
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(bottom: 10.0),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: AppColor.white,
                border: Border.all(width: 0.1, color: Colors.black26),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6)),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            courseUtils[i]['image'] ??
                                'assets/default_image.png',
                            height: size.height / 9,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(3.0),
                            decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(4.0)),
                            child: Text(
                              "Let's Start",
                              style: AppTextStyle2(
                                  fontWeight: FontWeight.bold,
                                  textColor: AppColor.white),
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Flultter App Development With RESTfull API',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text('⭐⭐⭐ ${'4.5'}',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text('Batch 3',
                            style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }
}
