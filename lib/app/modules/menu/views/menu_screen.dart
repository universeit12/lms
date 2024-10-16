import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/utils/app_config.dart';
import '../../../../admin/home/views/admin_home.dart';
import '../../../../style/text_style.dart';
import '../../../../widgets/app_dialog.dart';
import '../../../business logic/controllers/auth controller/logout_controller.dart';
import '../widget/settings_card.dart';
import '../widget/settings_utils.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});
  final controller = Get.put(LogoutController());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
          child: Column(
            children: [
              ///hearder image...
              Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(AppConfig.appLogo,
                      height: screenSize.height / 11)),
              const SizedBox(height: 20),

              ///menu properties...
              for (int i = 0; i < settingsUtils.length; i++)
                SettingsCard(
                  icon: settingsUtils[i]['icon'],
                  text: settingsUtils[i]['text'],
                  text2: settingsUtils[i]['text2'],
                  ontap: () {
                    Get.to(settingsUtils[i]["page"]);
                  },
                ),
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    Get.to(() => const DashboardScreen());
                  },
                  child: const Text("Teacher Dashboard")),
              TextButton(
                  onPressed: () {
                    AppDialog(
                        context,
                        const Icon(Icons.logout),
                        'Confirm Logout',
                        'Are you sure you want to logout? You will need to log in again to access your account.',
                        () {
                      controller.logout();
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Logout  ",
                        style: AppTextStyle1(fontSize: 16),
                      ),
                      const Icon(
                        Icons.logout,
                        size: 20.0,
                        color: Colors.blue,
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
