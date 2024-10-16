import 'package:flutter/material.dart';
import 'package:lms/style/toast_style.dart';

class CustomFooter extends StatelessWidget {
  CustomFooter({super.key});
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.school,
                            color: Colors.orangeAccent, size: 40),
                        SizedBox(width: 8),
                        Text(
                          'UNIVERSE SOFT TECH',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Study any topic, anytime. Explore thousands of courses for the lowest price ever!',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),

          const Text(
            'Contact our team',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: messageController,
                  decoration: const InputDecoration(
                    hintText: 'message',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  messageController.clear();
                  SuccessToast('Successfully Send Message');
                },
                child: const Text('Submit'),
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Footer Links
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FooterColumn(
                title: 'TOP CATEGORIES',
                links: [
                  'Course Details',
                  'Color Theory',
                  'Photoshop',
                  'WordPress Theme',
                  'Adobe Illustrator',
                  'Bootstrap',
                ],
              ),
              FooterColumn(
                title: 'USEFUL LINKS',
                links: [
                  'Become an instructor',
                  'Blog',
                  'All courses',
                  'Sign up',
                  'Profile',
                  'Mentors',
                ],
              ),
              FooterColumn(
                title: 'HELP',
                links: [
                  'Contact us',
                  'About us',
                  'Privacy policy',
                  'Terms and conditions',
                  'FAQ',
                  'Refund policy',
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class FooterColumn extends StatelessWidget {
  final String title;
  final List<String> links;

  const FooterColumn({super.key, required this.title, required this.links});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          for (var link in links)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: Text(
                link,
                style: const TextStyle(color: Colors.grey),
              ),
            ),
        ],
      ),
    );
  }
}
