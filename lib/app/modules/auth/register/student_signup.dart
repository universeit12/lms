import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lms/app/business%20logic/controllers/auth%20controller/register_controller.dart';
import '../../../../style/textfiled_style.dart';
import '../../../../utils/input_validation.dart';
import '../../../../widgets/appRichText.dart';
import '../../../../widgets/app_button.dart';
import '../Login/login_screen.dart';

class StudentSignup extends StatelessWidget {
  StudentSignup({super.key});
  final controller = Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        ///Register FormField...
        Form(
          key: controller.globalKey,
          child: Column(
            children: [
              TextFormField(
                decoration: appInputDecoration(
                    hinttext: 'First Name', prefixIcon: Icons.person),
                validator: InputValidator.validateUsername,
                onChanged: (value) {
                  controller.firstName.value = value;
                },
              ),
              SizedBox(height: 15.h),
              TextFormField(
                decoration: appInputDecoration(
                    hinttext: 'Last Name', prefixIcon: Icons.person),
                validator: InputValidator.validateUsername,
                onChanged: (value) {
                  controller.lastName.value = value;
                },
              ),
              SizedBox(height: 15.h),
              TextFormField(
                decoration: appInputDecoration(
                    hinttext: 'Your Email', prefixIcon: Icons.email),
                validator: InputValidator.validateEmail,
                onChanged: (value) {
                  controller.email.value = value;
                  controller.createUsername(value);
                },
              ),
              SizedBox(height: 15.h),
              Obx(() {
                return TextFormField(
                  obscureText: controller.isObscure.value,
                  decoration: appInputDecoration(
                      hinttext: 'Your Password',
                      prefixIcon: controller.isObscure.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      ontap: () => controller.toggleObscureText()),
                  validator: InputValidator.validatePassword,
                  onChanged: (value) {
                    controller.password.value = value;
                  },
                );
              }),
              SizedBox(height: 15.h),
              Obx(() {
                return TextFormField(
                  obscureText: controller.isObscure.value,
                  decoration: appInputDecoration(
                      hinttext: 'Re-type Your Password',
                      prefixIcon: controller.isObscure.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      ontap: () => controller.toggleObscureText()),
                  validator: InputValidator.validatePassword,
                  onChanged: (value) {
                    controller.confirmPassword.value = value;
                  },
                );
              }),
            ],
          ),
        ),
        SizedBox(height: 20.h),

        /// Login Button...
        Obx(() => AppButton(
              text: "Register",
              isLoading: controller.isLoading.value,
              onTap: () {
                if (controller.globalKey.currentState!.validate()) {
                  controller.register();
                }
              },
            )),

        /// Login Account Button...
        Apprichtext(
            text2: 'Log In', ontap: () => Get.offAll(() => LoginScreen()))
      ],
    );
  }
}
