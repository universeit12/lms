import 'package:flutter/material.dart';

import '../style/text_style.dart';

class Apprichtext extends StatelessWidget {
  final text;
  final text2;
  final ontap;
  final padding;
  const Apprichtext(
      {super.key, this.text, this.text2, this.ontap, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text ?? "Don't have an account?  ",
              style: AppTextStyle2(textColor: Colors.black)),
          InkWell(
            onTap: ontap,
            child: Text(text2 ?? "Don't have an account?",
                style: AppTextStyle2(
                    textColor: Colors.blue, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
