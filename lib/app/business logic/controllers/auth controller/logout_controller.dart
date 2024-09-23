import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../modules/auth/Login/login_screen.dart';

class LogoutController extends GetxController {
  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('userToken');
    Get.offAll(() => LoginScreen());
  }
}
