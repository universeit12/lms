import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../widgets/app_button.dart';
import '../widgets/build_textfield.dart';

class PasswordManagementScreen extends StatelessWidget {
  final TextEditingController currentPasswordController =
      TextEditingController();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Text(
                'Change Your Password',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),

              SizedBox(height: 20),
              // Email Field
              buildTextField(
                hintText: 'Current Password',
                prefixIcon: Icon(Icons.remove_red_eye),
                initialValue: '',
                onChanged: (String) {},
              ),
              SizedBox(height: 20),
              // Phone Field
              buildTextField(
                hintText: 'New Password',
                prefixIcon: Icon(Icons.remove_red_eye),
                initialValue: '',
                onChanged: (String) {},
              ),
              SizedBox(height: 20),
              // Bio Field
              buildTextField(
                hintText: 'Confirm New Password',
                prefixIcon: Icon(Icons.remove_red_eye),
                initialValue: '',
                onChanged: (String) {},
              ),
              SizedBox(height: 30),
              AppButton(
                text: 'Password Change',
                onTap: () {
                  Get.back();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    bool obscureText = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey[800]),
        filled: true,
        fillColor: Colors.white.withOpacity(0.5),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.blueAccent, width: 2),
        ),
      ),
      style: TextStyle(color: Colors.black),
    );
  }

  void _handlePasswordChange() {
    // Handle password change logic here
    // For example, validate the passwords and then perform the change
    String currentPassword = currentPasswordController.text;
    String newPassword = newPasswordController.text;
    String confirmPassword = confirmPasswordController.text;

    if (newPassword == confirmPassword) {
      // Proceed with the password change
      Get.snackbar(
        'Success',
        'Your password has been changed successfully!',
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );
    } else {
      // Show an error if passwords don't match
      Get.snackbar(
        'Error',
        'New passwords do not match.',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
