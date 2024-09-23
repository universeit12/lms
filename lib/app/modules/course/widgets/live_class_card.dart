import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';



class LiveClassCard extends StatelessWidget {
  const LiveClassCard({super.key, this.icon, this.text, this.text2});
  final icon;
  final text;
  final text2;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width / 2.4,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(width: 0.1)),
      child: Column(
        children: [
          Image.asset(
            icon ?? 'assets/icon/skill.png',
            height: 50.0,
          ),
          SizedBox(height: 5.0),
          Text(
            text ?? "",
            style: TextStyle(
                color: AppColor.primary,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                decorationColor: Colors.red),
          ),

        ],
      ),
    );
  }
}
