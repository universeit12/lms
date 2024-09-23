import 'package:flutter/material.dart';

import '../../../../widgets/row_icon_text.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Column(
            children: [
              for (int i = 0; i < 5; i++)
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.only(bottom: 15.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: Offset(2, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Reviewer's Name
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Al Azad',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          RowIconText(
                            icon: Icons.star,
                            text: '5.0',
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.grey.shade300,
                        thickness: 1,
                        height: 20.0,
                      ),
                      // Review Content
                      Text(
                        'I was able to learn very well by taking the course. Aliullah Bhai taught me very well and any problem I had, I joined the support class and got support. Thanks to the SMS team, I am very happy with the course.',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey.shade700,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
