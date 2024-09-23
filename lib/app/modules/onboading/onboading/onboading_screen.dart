import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '../../../../utils/colors.dart';
import '../widget/onboading_item.dart';

class OnboadingScreen extends StatelessWidget {
  const OnboadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          onbodingView(
              title: "Learn new skills everyday!",
              body: "This is the first screen of the onboarding.",
              image: const AssetImage('assets/images/1.png') //
              ),
          onbodingView(
            title: "Choose your plan!",
            body: "Here are some features of the app.",
            image: const AssetImage('assets/images/2.png'), //
          ),
          onbodingView(
            title: "Get Started",
            body: "Let's get started with using the app!",
            image: const AssetImage('assets/images/3.png'), //
          ),
        ],
        showSkipButton: true,
        onDone: () {
          Get.offNamed("/login_screen");
        },
        onSkip: () {
          Get.offNamed("/login_screen");
        },
        skip: Text("Skip",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: AppColor.primary)),
        back: const Icon(Icons.arrow_forward),
        next: Icon(
          Icons.arrow_forward,
          color: AppColor.primary,
        ),
        done: Text("Done",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: AppColor.black)),
        dotsDecorator: DotsDecorator(
          size: Size.square(10.0),
          activeSize: Size(20.0, 14.0),
          activeColor: AppColor.primary,
          color: AppColor.grey,
          spacing: EdgeInsets.symmetric(horizontal: 3.0),
        ),
      ),
    );
  }
}
