import 'dart:async';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../modules/bottom nav/views/bottom_nav_screen.dart';


class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(const Duration(seconds: 3), () async {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('userToken');

      if (token != null && token.isNotEmpty) {
        Get.offAll(() => BottomNavScreen());
      } else {
        Get.offNamed('/onboading_screen');
      }
    });
  }
}
