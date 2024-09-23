import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/style/text_style.dart';
import '../../business logic/controllers/feadback controller/feedback_controller.dart';

class FeedbackCard extends StatelessWidget {
  FeedbackCard({super.key});
  final controller = Get.put(FeedbackController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }
      return SizedBox(
        height: 180,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: controller.feedbackList.length,
          itemBuilder: (_, index) {
            final feedback = controller.feedbackList[index];
            Color randomColor =
                Color((Random().nextDouble() * 0xFFFFFF).toInt())
                    .withOpacity(0.5);
            return Container(
              margin: const EdgeInsets.only(right: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: randomColor,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black54, width: 0.1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.white,
                        child: Text(
                          feedback.name != null ? feedback.name![0] : 'A',
                          style: const TextStyle(
                              fontSize: 18, color: Colors.black),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            feedback.name ?? '...',
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text('Batch- ${feedback.course?.batchNo ?? '...'}',
                              style: AppTextStyle2()),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: size.width / 1.4,
                    child: Text(
                      "${feedback.feedback} The course material was well-organized and insightful. It covered essential topics in depth, making it easy to grasp the concepts." ??
                          '....',
                      style:
                          AppTextStyle1(fontSize: 14, textColor: Colors.black),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    });
  }
}
