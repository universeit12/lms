import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/app/modules/menu/views/menu_screen.dart';
import '../../../../utils/app_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(AppConfig.appLogo, height: screenSize.height / 11),
          IconButton(
              onPressed: () {
                Get.to(() => MenuScreen());
              },
              icon: const Icon(Icons.menu, size: 30))
        ],
      ),
    );
  }
}
