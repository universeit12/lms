import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../style/toast_style.dart';

class EditProfileController extends GetxController {
  var firstName = "".obs;
  var lastName = "".obs;
  var username = "".obs;

  Future<void> updateProfile() async {
    String url = 'https://lms-server-theta.vercel.app/api/v1/user/update';

    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken');

    if (token == null) {
      ErrorToast('Please login again');
      return;
    }

    var updatedData = {
      if (firstName.value.isNotEmpty) "firstName": firstName.value,
      if (lastName.value.isNotEmpty) "lastName": lastName.value,
      if (username.value.isNotEmpty) "username": username.value,
    };

    try {
      final response = await http.put(
        Uri.parse(url),
        headers: {
          "Content-Type": "application/json",
          "Authorization": token,
        },
        body: jsonEncode(updatedData),
      );

      if (response.statusCode == 200) {
        var responseData = jsonDecode(response.body);
        if (responseData['status'] == 'success') {
          SuccessToast('Profile successfully updated');
        } else {
          ErrorToast('Failed to update profile');
        }
      } else {
        ErrorToast('Server Error: ${response.statusCode}');
      }
    } catch (e) {
      ErrorToast('Something went wrong: $e');
    }
  }

  Future<void> refreshAccessToken() async {
    const String url =
        'https://lms-server-theta.vercel.app/api/v1/refresh-token';
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken');

    if (token == null) {
      ErrorToast('Please login again');
      return;
    }

    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          "Authorization": token,
        },
      );

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        if (jsonResponse['status'] == 'success') {
          print('New Token Created');
        } else {
          print('Failed to create token: ${jsonResponse['msg']}');
        }
      } else {
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Something went wrong: $e');
    }
  }
}
