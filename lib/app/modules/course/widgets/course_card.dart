import 'package:flutter/material.dart';

import '../../../../widgets/small_button.dart';


class CourseCard extends StatelessWidget {
  const CourseCard(
      {super.key,
      this.image,
      this.title,
      this.instuctorName,
      this.sit,
      this.courseFee,
      this.ontap});
  final image;
  final title;
  final instuctorName;
  final sit;
  final courseFee;
  final ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 240,
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(right: 10),
        padding: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            border: Border.all(width: 0.1),
            borderRadius: BorderRadius.circular(8.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.blue),
              child: Image.asset(
                image,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Instuctor: ${instuctorName}",
                    style: TextStyle(fontSize: 14.0, color: Colors.blueAccent),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallButton(
                        text: sit,
                      ),
                      SmallButton(
                        text: "৳ ${courseFee}",
                        bgcolor: Colors.black54,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
