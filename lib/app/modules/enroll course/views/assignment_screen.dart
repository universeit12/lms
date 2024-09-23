import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/build_course_card.dart';
import 'assignment_details.dart';

class AssignmentScreen extends StatelessWidget {
  final List<Map<String, dynamic>> modules = [
    {
      "moduleTitle": "Module 1",
      "assignments": [
        {"title": "Dart Operator Specification", "dueDate": "2024-09-20"},
        {"title": "Dart OOP Concept", "dueDate": "2024-09-25"},
      ]
    },
    {
      "moduleTitle": "Module 2",
      "assignments": [
        {
          "title": "Flutter Wrap and Stack Widgets Code",
          "dueDate": "2024-09-28"
        },
        {"title": "Firebase and RESTful API", "dueDate": "2024-10-01"},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Assignments by Module',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
        child: ListView.builder(
          itemCount: modules.length,
          itemBuilder: (context, moduleIndex) {
            var module = modules[moduleIndex];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: module['assignments'].length,
                  itemBuilder: (context, index) {
                    var assignment = module['assignments'][index];
                    return BuildCourseCard(
                      title: module['moduleTitle'],
                      subtitle: assignment['title'],
                      image: Icon(Icons.assignment, color: Colors.blue),
                      icon: Icon(Icons.arrow_right, color: Colors.black),
                      onTap: () {
                        Get.to(
                          AssignmentDetailScreen(
                            title: assignment['title'],
                            dueDate: assignment['dueDate'],
                          ),
                        );
                      },
                    );
                  },
                ),
                SizedBox(height: 20),
              ],
            );
          },
        ),
      ),
    );
  }
}
