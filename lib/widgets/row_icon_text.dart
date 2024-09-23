import 'package:flutter/material.dart';

class RowIconText extends StatelessWidget {
  final text;
  final icon;
  const RowIconText({super.key, this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.amber,
          size: 20,
        ),
        SizedBox(width: 5),
        Text(
          text ?? '',
        ),
      ],
    );
  }
}
