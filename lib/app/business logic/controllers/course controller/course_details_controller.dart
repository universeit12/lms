import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:lms/app/business%20logic/model/course_details_model.dart';
import 'dart:convert';

import 'package:lms/app/modules/Error%20Screen/error_screen.dart';

class CourseDetailsController extends GetxController {
  var isLoading = true.obs;
  var courseDetails = DetailsData().obs;

  fetchCourseDetails(String courseId) async {
    isLoading.value = true;
    try {
      final response = await http.get(
        Uri.parse(
            'https://lms-server-theta.vercel.app/api/v1/get-all-course-details'),
      );

      if (response.statusCode == 200) {
        var jsonData = json.decode(response.body);
        if (jsonData != null) {
          courseDetails.value =
              DetailsData.fromJson(jsonData['data'].firstWhere(
            (item) => item['course_id'] == courseId,
            orElse: () => null,
          ));
        } else {
          Get.offAll(() => const ErrorScreen());
        }
      }
    } finally {
      isLoading.value = false;
    }
  }
}
