import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../../../../style/toast_style.dart';
import '../../../modules/auth/Login/login_screen.dart';


class RegisterController extends GetxController {
  var firstName = ''.obs;
  var lastName = ''.obs;
  var email = ''.obs;
  var userName = ''.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;

  final globalKey = GlobalKey<FormState>();
  var isObscure = true.obs;
  final RxBool isLoading = false.obs;

  ///Password Obsecure Toggle...
  void toggleObscureText() {
    isObscure.value = !isObscure.value;
  }

  /// Extract username from email
  void createUsername(String email) {
    final parts = email.split('@');
    if (parts.isNotEmpty) {
      userName.value = parts[0];
    }
  }

  Future<void> register() async {
    try {
      isLoading(true);
      String url = "https://lms-server-theta.vercel.app/api/v1/user/sign-up";
      Map<String, dynamic> requestBody = {
        "firstName": firstName.value,
        "lastName": lastName.value,
        "username": userName.value,
        "email": email.value,
        "password": password.value,
        "confirmPassword": confirmPassword.value,
        "img": ""
      };

      final response = await http.post(
        Uri.parse(url),
        body: jsonEncode(requestBody),
        headers: {"Content-Type": "application/json"},
      );

      if (response.statusCode == 201) {
        var data = jsonDecode(response.body);
        if (data['status'] == 'success') {
          SuccessToast('Registration Successfully');
          Get.offAll(() => LoginScreen());
        } else {
          ErrorToast('Registration failed: ${data['message']}');
        }
      } else {
        ErrorToast(response.body);
      }
    } catch (e) {
      ErrorToast(e.toString());
      print(e);
    } finally {
      isLoading(false);
    }
  }
}
