import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../style/text_style.dart';
import '../../../../style/textfiled_style.dart';
import '../../../../utils/app_image.dart';
import '../../../../utils/input_validation.dart';
import '../../../../widgets/appRichText.dart';
import '../../../../widgets/app_button.dart';
import '../../../business logic/controllers/auth controller/login_controller.dart';
import '../forget/forget_screen.dart';
import '../register/register_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Header Section
                  Image.asset(
                    AppImage.appLogo,
                    width: size.width / 2,
                  ),
                  SizedBox(height: 5.h),
                  Text('Register Now!', style: AppTextStyle1()),
                  SizedBox(
                    height: 30.h,
                  ),

                  Form(
                    key: controller.globalKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: appInputDecoration(
                              hinttext: 'Enter Email', prefixIcon: Icons.email),
                          validator: InputValidator.validateEmail,
                          onChanged: (value) {
                            controller.email.value = value;
                          },
                        ),
                        SizedBox(height: 20.h),
                        Obx(() {
                          return TextFormField(
                            obscureText: controller.isObscure.value,
                            decoration: appInputDecoration(
                                hinttext: 'Enter Password',
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
                      ],
                    ),
                  ),
                  SizedBox(height: 15.h),

                  /// Forget Password Button...
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                        onTap: () => Get.offAll(() => const ForgetScreen()),
                        child: Text('Forget password?',
                            style: AppTextStyle2(textColor: Colors.blue))),
                  ),
                  SizedBox(height: 35.h),

                  /// Login Butt
                  Obx(() => AppButton(
                        text: "Log In",
                        isLoading: controller.isLoading.value,
                        onTap: () {
                          if (controller.globalKey.currentState!.validate()) {
                            controller.login();
                          }
                        },
                      )),

                  /// Don't Hava an account...
                  Apprichtext(
                      text2: 'Register',
                      ontap: () => Get.offAll(() => RegisterScreen())),
                  SizedBox(height: 35.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
