import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../style/text_style.dart';
import '../../../../style/textfiled_style.dart';
import '../../../../style/toast_style.dart';
import '../../../../utils/app_image.dart';
import '../../../../utils/input_validation.dart';
import '../../../../widgets/appRichText.dart';
import '../../../../widgets/app_button.dart';
import '../Login/login_screen.dart';
import '../register/register_screen.dart';

class ForgetScreen extends StatelessWidget {
  const ForgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Header Section
                    Column(
                      children: [
                        Image.asset(AppImage.appLogo),
                        SizedBox(height: 20.h),
                        Text('Password Recovery!', style: AppTextStyle1()),
                        Text(
                          textAlign: TextAlign.center,
                          'Please enter the email address to recieve a varification code.',
                          style: AppTextStyle2(),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                    ),

                    Column(
                      children: [
                        // Login Form
                        Form(
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: appInputDecoration(
                                    hinttext: 'Your Email',
                                    prefixIcon: Icons.email),
                                validator: InputValidator.validateEmail,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 15.h,
                        ),

                        // Login Button
                        AppButton(
                          text: "Send Code",
                          onTap: () {
                            SuccessToast('Successfully Log In');
                            Get.to(() => LoginScreen());
                          },
                        ),

                        // Create Account Button
                        Apprichtext(
                            text: "Don't have an account? ",
                            text2: 'Register',
                            ontap: () => Get.offAll(() => RegisterScreen()))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
