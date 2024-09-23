import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../style/toast_style.dart';
import '../../../modules/bottom nav/views/bottom_nav_screen.dart';

class LoginController extends GetxController {
  final globalKey = GlobalKey<FormState>();
  RxString emailError = RxString('');
  final RxBool isLoading = false.obs;
  var isObscure = true.obs;
  var email = ''.obs;
  var password = ''.obs;

  ///Password Obsecure Toggle...
  void toggleObscureText() {
    isObscure.value = !isObscure.value;
  }

  Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userToken', token);
  }

  Future<void> login() async {
    const String apiUrl =
        'https://lms-server-theta.vercel.app/api/v1/user/sign-in';
    final Map<String, dynamic> loginData = {
      "email": email.value,
      "password": password.value,
    };

    isLoading(true);
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {"Content-Type": "application/json"},
        body: json.encode(loginData),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        ///Save User Token...
        await saveToken(data['token']);

        ///Login check...
        if (data['status'] == 'success') {
          Get.offAll(() => BottomNavScreen());
          SuccessToast('Successfully Login');
        } else {
          ErrorToast(data['message']);
        }
      } else {}
    } catch (e) {
      ErrorToast(e);
    } finally {
      isLoading(false);
    }
  }
}
