import 'package:flutter/material.dart';
import '../../../../style/text_style.dart';
import '../../../../widgets/small_button.dart';


class Resoursecard extends StatelessWidget {
  const Resoursecard({super.key, this.moduleNo, this.date, this.ontap});
  final moduleNo;
  final date;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.1),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Module No', style: AppTextStyle2(fontSize: 18.0)),
          const SizedBox(height: 10.0),
          const Divider(),
          Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Module 1 Resourse',
                        style: AppTextStyle2(fontSize: 18.0)),
                    const SizedBox(height: 10),
                    SmallButton(
                      text: date,
                    )
                  ],
                ),
                InkWell(
                    onTap: ontap,
                    child: const CircleAvatar(child: Icon(Icons.download)))
              ],
            ),
          )
        ],
      ),
    );
  }
}
