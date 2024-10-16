import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../../../../style/toast_style.dart';
import '../../model/all_course_model.dart';

class AllCourseController extends GetxController {
  var courseList = <Data>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchCourseData();
    super.onInit();
  }

  void fetchCourseData() async {
    try {
      isLoading(true);
      final response = await http.get(
          Uri.parse("https://lms-server-theta.vercel.app/api/v1/all-course"));

      if (response.statusCode == 200) {
        var courseData = AllCourseModel.fromJson(json.decode(response.body));
        courseList.value = courseData.data ?? [];
      } else {
        ErrorToast('Something Wrong');
      }
    } finally {
      isLoading(false);
    }
  }
}
