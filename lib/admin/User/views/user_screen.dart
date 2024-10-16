import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/widgets/app_dialog.dart';

import '../controller/user_controller.dart';

class UserDashboard extends StatelessWidget {
  final controller = Get.put(UserController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('All Users'),
          backgroundColor: Colors.amberAccent,
        ),
        body: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.studentList.length,
                    itemBuilder: (context, index) {
                      final data = controller.studentList[index];
                      return Card(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                NetworkImage(data.profilePick ?? ''),
                            backgroundColor: Colors.transparent,
                          ),
                          title: Text(
                            "${data.firstName} ${data.lastName}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(data.email ?? ''),
                          trailing: IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              AppDialog(
                                  context,
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        NetworkImage(data.profilePick ?? ''),
                                    backgroundColor: Colors.transparent,
                                  ),
                                  "Delete Student ",
                                  "Do you Now Delete ${data.firstName} ${data.lastName} Account?",
                                  () {});
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
