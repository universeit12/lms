import 'package:flutter/material.dart';
import '../../../../style/text_style.dart';
import '../../../../widgets/app_button2.dart';
import '../../../../widgets/backappbar.dart';

class CertificateScreen extends StatelessWidget {
  const CertificateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Backappbar(
        title: 'Certificate',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Completion Certificate',
                  style: AppTextStyle1(fontSize: 18.0)),
              SizedBox(height: 10.0),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Congratulations! ',
                    style: TextStyle(color: Colors.green, fontSize: 16)),
                TextSpan(
                    text:
                        'you have successfully completed your course. Download and share your certificate. '),
              ])),
              SizedBox(height: 10.0),
              Row(
                children: [
                  AppButton2(
                    text: 'Share',
                  ),
                  AppButton2(
                    text: 'Download',
                    icon: Icons.download,
                    color: Colors.green,
                  ),
                ],
              ),
              SizedBox(height: 50.0),
              Text('Assessment Certificate',
                  style: AppTextStyle1(fontSize: 18.0)),
              SizedBox(height: 10.0),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Congratulations! ',
                    style: TextStyle(color: Colors.green, fontSize: 16)),
                TextSpan(
                    text:
                        'you have successfully completed your course. Download and share your certificate. '),
              ])),
              SizedBox(height: 10.0),
              Row(
                children: [
                  AppButton2(
                    text: 'Share',
                  ),
                  AppButton2(
                    text: 'Download',
                    icon: Icons.download,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
