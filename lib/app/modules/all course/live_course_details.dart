import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../style/text_style.dart';
import '../../../utils/app_image.dart';
import '../../../utils/colors.dart';
import '../../../widgets/backappbar.dart';
import '../../../widgets/small_button.dart';
import '../course/widgets/botton_sheet.dart';
import '../course/widgets/instructor_card.dart';
import '../course/widgets/lesson_info_widget.dart';
import '../course/widgets/module_video_screen.dart';
import '../course/widgets/review_card.dart';

class LiveCourseDetails extends StatelessWidget {
  final data;
  const LiveCourseDetails(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: Backappbar(
          title: data['title'],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
          child: ListView(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
                child: Image.asset(
                  AppImage.flutterCourse,
                  height: 150.0,
                  width: size.width / 2.5,
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
              Divider(
                height: 15,
                color: Colors.blue,
              ),
              SizedBox(height: 10),

              Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: LessonInfoWidget(
                              title: 'Type',
                              subtitle: 'Supports',
                              icon: Icons.file_present_sharp,
                            ),
                          ),
                          Expanded(
                            child: LessonInfoWidget(
                              title: 'Projects',
                              subtitle: '5+ Projects',
                              icon: Icons.font_download_rounded,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: LessonInfoWidget(
                              title: 'Modules',
                              subtitle: '28+',
                              icon: Icons.date_range_sharp,
                            ),
                          ),
                          Expanded(
                            child: LessonInfoWidget(
                              title: 'Live Class',
                              subtitle: '100',
                              icon: Icons.download_for_offline,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              Text("Course Plan", style: AppTextStyle1()),
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
                          SmallButton(
                            text: 'Module 1',
                          ),
                          Spacer(),
                          Text('Dart Basic',
                              style: AppTextStyle2(textColor: Colors.blue)),
                          SizedBox(
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
                                Get.to(() => ModuleVideoScreen());
                              },
                              contentPadding: EdgeInsets.zero,
                              leading: CircleAvatar(
                                backgroundColor:
                                    AppColor.primary.withOpacity(.1),
                                child: Icon(
                                  Icons.video_call,
                                  color: AppColor.primary,
                                ),
                              ),
                              title: Text('Flutter Basic Structure'),
                              subtitle: Text('Class no - 3'))
                      ],
                    ),
                  ),
                ),

              /// Instructor...
              Text("Course Plan", style: AppTextStyle1()),
              InstructorCard(),

              ///Description...
              SizedBox(height: 20),
              Text("Description", style: AppTextStyle1()),
              Text(
                data['description'],
              ),

              ///Requirements for enrollment this  course...
              SizedBox(height: 20),
              Text("Requirements", style: AppTextStyle1()),
              Text('Minimum 8 GB RAM and 64 bit laptop or computer'),

              ///Review for students...
              SizedBox(height: 20),
              Text("Reviews ", style: AppTextStyle1()),
              ReviewCard(),
              SizedBox(height: 100)
            ],
          ),
        ),
        bottomSheet: BottonSheet());
  }
}
