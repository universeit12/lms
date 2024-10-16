import 'package:flutter/material.dart';
import 'package:lms/style/text_style.dart';

class DashboardCard extends StatelessWidget {
  final image;
  final String label;
  final ontap;

  DashboardCard({
    super.key,
    this.image,
    required this.label,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.amber.shade300,
          border: Border.all(width: .1),
        ),
        child: Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(image, height: 40),
              const SizedBox(width: 15),
              Text(label, style: AppTextStyle1(textColor: Colors.black45)),
              const Spacer(),
              const Icon(Icons.arrow_circle_right_outlined,
                  color: Colors.black45)
            ],
          ),
        ),
      ),
    );
  }
}
