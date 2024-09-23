import 'package:flutter/material.dart';

import '../../../../utils/colors.dart';


class InstructorCard extends StatelessWidget {
  const InstructorCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: AppColor.blue2,
              borderRadius: BorderRadius.circular(8.0),
              border: Border(
                left: BorderSide(
                  color: Colors.blue,
                  width: 2.0,
                ),
              )),
          child: Column(
            children: [
              for (int i = 0; i < 2; i++)
                Container(
                    height: 80,
                    width: double.infinity,
                    clipBehavior: Clip.antiAlias,
                    alignment: Alignment.bottomCenter,
                    margin:
                        const EdgeInsets.only(bottom: 15.0, right: 10.0),
                    padding: const EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                      color: AppColor.white.withOpacity(0.9),
                      border: Border.all(width: 0.1),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 80,
                          width: screenSize.width / 5,
                          child: Image.asset(
                            'assets/images/teacher/kibriya.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 15.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Golam Kibria",
                              style: const TextStyle(
                                  color: Colors.black, fontSize: 16.0),
                            ),
                            const SizedBox(height: 5.0),
                            Text(
                              "Flutter Developer",
                              style: const TextStyle(
                                  color: Colors.black54, fontSize: 12.0),
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_right)
                      ],
                    )),
            ],
          )),
    );
  }
}
