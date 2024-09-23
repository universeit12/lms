import 'package:flutter/material.dart';
import '../../../widgets/backappbar.dart';
import 'course_card.dart';

class LiveCourseScreen extends StatelessWidget {
  final data;
  const LiveCourseScreen({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: Backappbar(
          title: data['title'],
        ),
        body: const Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Wrap(
                children: [CourseCard()],
              )
            ],
          ),
        ));
  }
}
