import 'package:flutter/material.dart';
import '../../../style/text_style.dart';
import '../../../utils/colors.dart';
import '../../../widgets/backappbar.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Backappbar(title: 'Terms And Condition'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: Column(
            children: [
              Text(
                'Terms And Conditoin-',
                style:
                    AppTextStyle1(fontSize: 22.0, textColor: AppColor.primary),
              ),
              Text(
                'Welcome to [Your App Name] (the "App"). These Terms and Conditions ("Terms") govern your use of the App and any associated services. By accessing or using the App, you agree to be bound by these Terms.\n\n'
                'By using the App, you agree to comply with and be bound by these Terms and any additional terms, conditions, or policies that may be applicable. If you do not agree with any part of these Terms, you must not use the App.\n\n'
                'To the fullest extent permitted by law, [Your Company Name] shall not be liable for any indirect, incidental, special, consequential, or punitive damages arising out of or related to your use of the App.',
              )
            ],
          ),
        ),
      ),
    );
  }
}
