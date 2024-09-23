import 'package:flutter/material.dart';

import 'profile_listile.dart';

class BasicInformationScreen extends StatelessWidget {
  const BasicInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            ProfileListtile(icon: Icons.person, title: "Al Azad"),
            ProfileListtile(icon: Icons.email, title: "alazad214@gmail.com"),
            ProfileListtile(icon: Icons.phone, title: "01760******"),
            ProfileListtile(icon: Icons.numbers, title: "421215454"),
          ],
        ),
      ),
    );
  }
}
