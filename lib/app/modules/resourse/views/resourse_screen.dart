import 'package:flutter/material.dart';

import '../../../../widgets/backappbar.dart';
import '../widgets/resourse_card.dart';


class ResourseScreen extends StatelessWidget {
  const ResourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Backappbar(title: "Resourse"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: ListView.builder(
            reverse: true,
            itemCount: 5,
            itemBuilder: (_, index) {
              return Resoursecard(
                moduleNo: "Module-1",
                date: "16, may, 2024",
                ontap: () {},
              );
            }),
      ),
    );
  }
}
