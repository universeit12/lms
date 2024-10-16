import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/utils/colors.dart';

import '../widget/card_utils.dart';
import '../widget/dashboard_card.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      appBar: AppBar(
          title: const Text("Dashboard"), backgroundColor: Colors.amberAccent),
      drawer: const Drawer(),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Column(
            children: [
              for (int i = 0; i < adminCardUtils.length; i++)
                DashboardCard(
                  image: adminCardUtils[i]['image'],
                  label: adminCardUtils[i]['text'],
                  ontap: () {
                    Get.to(adminCardUtils[i]["page"]);
                  },
                ),
            ],
          )),
    );
  }
}
