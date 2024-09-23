import 'package:flutter/material.dart';

import '../../../../utils/app_config.dart';
import '../../../../utils/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
                height: screenSize.height / 1,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    ///App Logo...
                    Image.asset(AppConfig.appLogo,
                        height: screenSize.height / 10),
                    SizedBox(height: 10.0),

                    Padding(
                        padding: EdgeInsets.symmetric(horizontal: 100.0),
                        child: LinearProgressIndicator(
                          color: AppColor.primary,
                          borderRadius: BorderRadius.circular(10),
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
