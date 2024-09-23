import 'package:flutter/material.dart';
import '../../../utils/app_icon.dart';
import '../../../widgets/backappbar.dart';
import '../menu/widget/settings_card.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Backappbar(title: 'Support'),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SettingsCard(
                text: "Call us on ",
                text2: '+880 176355****',
                icon: AppIcon.call),
            SettingsCard(
                text: "Mail us ",
                text2: 'alazadcmt@gmail.com',
                icon: AppIcon.email),
          ],
        ),
      ),
    );
  }
}
