import 'dart:convert';

import 'package:get/get.dart';
import 'package:lms/core/api_url.dart';
import '../../model/teacher_model.dart';
import 'package:http/http.dart' as http;

class TeacherController extends GetxController {
  var teacherList = <TeacherData>[].obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    fetchTeacher();
  }

  fetchTeacher() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse("$baseUrl$teacherUrl"));
      if (response.statusCode == 200) {
        var teacher = TeacherModel.fromJson(json.decode(response.body));
        teacherList.value = teacher.data ?? [];
      } else {}
    } finally {
      isLoading(false);
    }
  }
}
