import 'dart:convert';

import 'package:get/get.dart';
import 'package:lms/app/business%20logic/model/profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../../../../core/api_url.dart';
import '../../../../style/toast_style.dart';
import '../../../modules/profile/views/edit_profile_screen.dart';

class ProfileController extends GetxController {
  var profileData = ProfileData().obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    getProfileData();
    super.onInit();
  }

  getProfileData() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken');
    if (token == null) {
      ErrorToast('Please login again');
      return;
    }
    try {
      isLoading(true);
      final response = await http.get(
        Uri.parse('$baseUrl$signleUser'),
        headers: {
          'Authorization': token,
        },
      );
      if (response.statusCode == 200) {
        var myData = ProfileModel.fromJson(json.decode(response.body));
        profileData.value = myData.data ?? ProfileData();
      } else {
        ErrorToast('Something went wrong');
      }
    } finally {
      isLoading(false);
    }
  }

  void editProfile() {
    Get.to(() => EditProfileScreen());
  }
}
