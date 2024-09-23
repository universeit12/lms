import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/api_url.dart';
import '../../../../style/toast_style.dart';
import '../../../modules/profile/views/edit_profile_screen.dart';

class ProfileController extends GetxController {
  Future<Map<String, dynamic>?> getProfileData() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('userToken');
    if (token == null) {
      print('Token not found');
      return null;
    }
    try {
      final response = await http.get(
        Uri.parse('${appAPI.baseUrl}${appAPI.signleUser}'),
        headers: {
          'Authorization': token,
        },
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data['data'];
      } else {
        return null;
      }
    } catch (e) {
      ErrorToast('Something Wrong');
      return null;
    }
  }

  void editProfile() {
    Get.to(() => EditProfileScreen());
  }
}
