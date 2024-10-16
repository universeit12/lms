import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../style/textfiled_style.dart';
import '../../../../utils/app_config.dart';
import '../../../../widgets/app_button.dart';
import '../../../business logic/controllers/profile controller/profile_controller.dart';
import '../../../business logic/controllers/profile controller/profile_edit_controller.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});
  final editcontroller = Get.put(EditProfileController());
  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
        body: RefreshIndicator(onRefresh: () async {
          await editcontroller.refreshAccessToken();
        }, child: Obx(() {
          final data = controller.profileData.value;
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage(AppConfig.appImage),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  initialValue: data.firstName ?? '',
                  decoration: appInputDecoration(
                      hinttext: 'First Name', prefixIcon: Icons.person_outline),
                  onChanged: (value) {
                    editcontroller.firstName.value = value;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  initialValue: data.lastName ?? '',
                  decoration: appInputDecoration(
                      hinttext: 'Last Name', prefixIcon: Icons.person_outline),
                  onChanged: (value) {
                    editcontroller.lastName.value = value;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  initialValue: data.username ?? '',
                  decoration: appInputDecoration(
                      hinttext: 'User name',
                      prefixIcon: Icons.drive_file_rename_outline),
                  onChanged: (value) {
                    editcontroller.username.value = value;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  readOnly: true,
                  initialValue: data.email ?? '',
                  decoration: appInputDecoration(
                      hinttext: 'Email', prefixIcon: Icons.email),
                  onChanged: (value) {},
                ),
                const SizedBox(height: 20),
                AppButton(
                  text: 'Save Changes',
                  onTap: () {
                    editcontroller.updateProfile();
                  },
                ),
              ],
            ),
          );
        })));
  }
}
