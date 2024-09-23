import 'package:flutter/material.dart';
import '../../../../utils/colors.dart';
import '../../../../widgets/small_button.dart';


class BottonSheet extends StatelessWidget {
  const BottonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      width: double.infinity,
      padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5),
      decoration: BoxDecoration(
          color: AppColor.secondary,
          border: Border(top: BorderSide(width: 0.1)),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "৳ 6000",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    decoration: TextDecoration.lineThrough,
                    fontWeight: FontWeight.bold,
                    decorationColor: Colors.red),
              ),
              Text(
                "৳ 6000",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    decorationColor: Colors.red),
              ),
            ],
          ),
          SmallButton(
            text: 'Join 2nd Batch',
            color: AppColor.white,
            bgcolor: AppColor.red,
          )
        ],
      ),
    );
  }
}
