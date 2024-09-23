import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../style/text_style.dart';

class SettingsCard extends StatelessWidget {
  final icon;
  final text;
  final text2;
  final ontap;
  final bgcolor;
  final size1;
  final border;
  const SettingsCard(
      {super.key,
      this.icon,
      this.text,
      this.text2,
      this.ontap,
      this.bgcolor,
      this.size1,
      this.border});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 80.h,
        padding: const EdgeInsets.only(right: 10, left: 10),
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: bgcolor ?? Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(6.0),
            border: border ?? Border.all(width: 0.1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              icon ?? 'assets/icon/skill.png',
              height: 45.0,
            ),
            const SizedBox(width: 10.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text ?? 'Profile',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle1(fontSize: size1 ?? 15.sp)),
                Text(text2 ?? ' ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle2(fontSize: size1 ?? 12.0)),
              ],
            ),
            Spacer(),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.black45,
            )
          ],
        ),
      ),
    );
  }
}
