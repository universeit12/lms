import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../business logic/controllers/nav controller/bottom_controller.dart';

class BottomNavScreen extends StatelessWidget {
  BottomNavScreen({super.key});
  final BottomNavController bottomNavController =
      Get.put(BottomNavController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() =>
          bottomNavController.pages[bottomNavController.selectedIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: bottomNavController.selectedIndex.value,
            elevation: 50,
            iconSize: 30.0,
            selectedItemColor: Colors.blueAccent,
            unselectedIconTheme: const IconThemeData(color: Colors.black54),
            unselectedItemColor: Colors.black54,
            showUnselectedLabels: true,
            onTap: (index) {
              bottomNavController.changeIndex(index);
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
                icon: Icon(Icons.videocam_outlined),
                activeIcon: Icon(Icons.videocam),
                label: 'Recording',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'More',
              ),
            ],
          )),
    );
  }
}
