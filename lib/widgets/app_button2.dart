import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AppButton2 extends StatelessWidget {
  final text;
  final ontap;
  final color;
  final icon;
  const AppButton2({super.key, this.text, this.ontap, this.color, this.icon});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () async {
          final Uri url = Uri.parse("https://medium.com/@alazad214/");
          if (!await launchUrl(url)) {
            throw Exception('Could not launch $url');
          }
        },
        child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: color,
              border: Border.all(color: Colors.green),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text(text ?? ''), Icon(icon ?? Icons.share)],
            )),
      ),
    );
  }
}
