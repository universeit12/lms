import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user_model.dart';

class UserController extends GetxController {
  var studentList = <UserData>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    fetchAllStudent();
    super.onInit();
  }

  void fetchAllStudent() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken');
    if (token == null) {
      print('Token not found');
      return null;
    }
    try {
      isLoading(true);
      final response = await http.get(
        Uri.parse("https://lms-server-theta.vercel.app/api/v1/all-user"),
        headers: {
          "Authorization": token, // Add Authorization header
        },
      );

      if (response.statusCode == 200) {
        var userData = UserModel.fromJson(json.decode(response.body));
        studentList.value = userData.data ?? [];
      }
    } finally {
      isLoading(false);
    }
  }
}
