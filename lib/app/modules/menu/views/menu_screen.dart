import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../style/text_style.dart';
import '../../../../widgets/app_dialog.dart';
import '../../../../widgets/custom_appbar.dart';
import '../../../business logic/controllers/auth controller/logout_controller.dart';
import '../widget/settings_card.dart';
import '../widget/settings_utils.dart';

class MenuScreen extends StatelessWidget {
  MenuScreen({super.key});
  final controller = Get.put(LogoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20),
            child: Column(
              children: [
                for (int i = 0; i < settingsUtils.length; i++)
                  SettingsCard(
                    icon: settingsUtils[i]['icon'],
                    text: settingsUtils[i]['text'],
                    text2: settingsUtils[i]['text2'],
                    ontap: () {
                      Get.to(settingsUtils[i]["page"]);
                    },
                  ),
                SizedBox(height: 20),
                TextButton(
                    onPressed: () {
                      AppDialog(context, Icon(Icons.logout), 'Confirm Logout',
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
                        Icon(
                          Icons.logout,
                          size: 20.0,
                          color: Colors.blue,
                        )
                      ],
                    )),
              ],
            ),
          ),
        ));
  }
}
