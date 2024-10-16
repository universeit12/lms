import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/app/modules/home/views/home_screen.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.offAll(() => const HomeScreen());
              },
              icon: const Icon(Icons.arrow_back_rounded))),
      body: Center(child: Image.asset('assets/images/error.png', height: 200)),
    );
  }
}
