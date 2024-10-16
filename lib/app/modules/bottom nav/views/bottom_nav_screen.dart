import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../business logic/controllers/nav controller/bottom_controller.dart';

class BottomNavScreen extends StatelessWidget {
  BottomNavScreen({super.key});
  final controller = Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.pages[controller.selectedIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            elevation: 50,
            iconSize: 30.0,
            selectedItemColor: Colors.blueAccent,
            unselectedIconTheme: const IconThemeData(color: Colors.black54),
            unselectedItemColor: Colors.black54,
            showUnselectedLabels: true,
            onTap: (index) {
              controller.changeIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                activeIcon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.video_call_outlined),
                activeIcon: Icon(Icons.video_call),
                label: 'Join Class',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.source),
                activeIcon: Icon(Icons.source),
                label: 'My Course',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                activeIcon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          )),
    );
  }
}
