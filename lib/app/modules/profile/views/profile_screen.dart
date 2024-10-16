import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/app/modules/enroll%20course/views/enroll_screen.dart';
import 'package:lms/app/modules/profile/views/edit_profile_screen.dart';
import 'package:lms/app/modules/profile/views/password_management_screen.dart';
import 'package:lms/utils/colors.dart';
import '../../../../utils/app_config.dart';
import '../../../business logic/controllers/profile controller/profile_controller.dart';
import '../../../business logic/controllers/profile controller/profile_edit_controller.dart';
import '../widgets/profile_card.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileController controller = Get.put(ProfileController());
  final editController = Get.put(EditProfileController());

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: SafeArea(
        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }

          final data = controller.profileData.value;

          return RefreshIndicator(
            onRefresh: () async {
              await editController.refreshAccessToken();
            },
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                Container(
                    height: 120,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        color: AppColor.secondary,
                        shape: BoxShape.circle),
                    child: Image.asset(AppConfig.appImage)),
                const SizedBox(height: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${data.firstName ?? ''} ${data.lastName ?? ''}',
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      data.email ?? 'No email available',
                      style: TextStyle(color: Colors.grey[700]),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                ProfileCard(
                    title: 'My Course',
                    icon: Icons.info_outline_rounded,
                    onTap: () => Get.to(() => const EnrollScreen())),
                ProfileCard(
                    title: 'Account Management',
                    icon: Icons.settings,
                    onTap: () => Get.to(() => EditProfileScreen())),
                ProfileCard(
                  title: 'Password Management',
                  icon: Icons.lock,
                  onTap: () {
                    Get.to(() => PasswordManagementScreen());
                  },
                ),
                ProfileCard(
                    title: 'Dark Mode',
                    icon: Icons.dark_mode,
                    trailing: Switch(
                      value: Get.isDarkMode,
                      onChanged: (value) {
                        Get.changeThemeMode(
                            value ? ThemeMode.dark : ThemeMode.light);
                      },
                    ),
                    onTap: () {}),
              ],
            ),
          );
        }),
      ),
    );
  }
}
