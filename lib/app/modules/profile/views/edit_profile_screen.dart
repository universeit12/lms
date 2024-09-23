import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/app_config.dart';
import '../../../../widgets/app_button.dart';
import '../../../business logic/controllers/profile controller/profile_edit_controller.dart';
import '../widgets/build_textfield.dart';

class EditProfileScreen extends StatelessWidget {
  final controller = Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(AppConfig.appImage),
                ),
                SizedBox(height: 20),
                // Name Field
                buildTextField(
                  hintText: 'Name',
                  prefixIcon: Icon(Icons.person),
                  initialValue: controller.userName.value,
                  onChanged: (value) => controller.updateName(value),
                ),
                SizedBox(height: 20),
                // Email Field
                buildTextField(
                  hintText: 'Email',
                  readOnly: true,
                  prefixIcon: Icon(Icons.email),
                  initialValue: controller.userEmail.value,
                  onChanged: (value) => controller.updateEmail(value),
                ),
                SizedBox(height: 20),
                // Phone Field
                buildTextField(
                  hintText: 'Phone',
                  prefixIcon: Icon(Icons.phone),
                  initialValue: controller.userPhone.value,
                  onChanged: (value) => controller.updatePhone(value),
                ),
                SizedBox(height: 20),
                // Bio Field
                buildTextField(
                  hintText: 'Bio',
                  initialValue: controller.userBio.value,
                  maxLines: 3,
                  onChanged: (value) => controller.updateBio(value),
                ),
                SizedBox(height: 30),
                AppButton(
                  text: 'Save Changes',
                  onTap: () {
                    Get.back();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
