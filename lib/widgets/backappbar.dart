import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors.dart';

class Backappbar extends StatelessWidget implements PreferredSizeWidget {
  const Backappbar({super.key, this.title});
  final title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: AppColor.white,
          )),
      backgroundColor: AppColor.primary,
      titleSpacing: 0,
      title: Text(
        title,
        style: const TextStyle(fontSize: 16.0, color: AppColor.white),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
