import 'package:get/get.dart';
import '../../../modules/course/views/join_class_screen.dart';
import '../../../modules/enroll course/views/enroll_screen.dart';
import '../../../modules/home/views/home_screen.dart';
import '../../../modules/profile/views/profile_screen.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  final pages = [HomeScreen(), ClassJoin(), EnrollScreen(), ProfileScreen()];

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
