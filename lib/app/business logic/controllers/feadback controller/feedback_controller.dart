import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:lms/core/api_url.dart';
import 'dart:convert';
import '../../model/feedback_model.dart';

class FeedbackController extends GetxController {
  var feedbackList = <FeedbackData>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchFeedback();
    super.onInit();
  }

  void fetchFeedback() async {
    try {
      isLoading(true);
      final response =
          await http.get(Uri.parse("${appAPI.baseUrl}${appAPI.feedbackUrl}"));
      if (response.statusCode == 200) {
        var model = FeedbackModel.fromJson(json.decode(response.body));
        feedbackList.value = model.data ?? [];
      } else {}
    } finally {
      isLoading(false);
    }
  }
}
