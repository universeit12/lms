import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsScreen extends StatelessWidget {
  // Function to launch URL
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/logo/logo.png', // Replace with your logo asset
                  height: 100.0,
                ),
              ),
              SizedBox(height: 16.0),
              SizedBox(height: 16.0),
              Text(
                'ShikhonIQ is a comprehensive Learning Management System designed to enhance the learning experience. It offers features such as profile management, notifications, and a vast library of recorded videos to help you manage and access educational content efficiently.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                'Mission Statement:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'To provide a seamless and engaging learning experience through innovative technology and user-friendly design.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Developed by:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Al Azad',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Contact Information:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8.0),
              GestureDetector(
                onTap: () => _launchURL('mailto:alazad214@gmail.com'),
                child: Text(
                  'Email: alazad214@gmail.com',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => _launchURL('https://alazad214.netlify.app/'),
                child: Text(
                  'Website: https://alazad214.netlify.app/',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Follow us on social media:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.facebook),
                    onPressed: () =>
                        _launchURL('https://www.facebook.com/yourpage'),
                  ),
                  IconButton(
                    icon: Icon(Icons.facebook),
                    onPressed: () =>
                        _launchURL('https://twitter.com/yourprofile'),
                  ),
                  IconButton(
                    icon: Icon(Icons.facebook),
                    onPressed: () =>
                        _launchURL('https://www.linkedin.com/in/yourprofile'),
                  ),
                ],
              ),
              SizedBox(height: 24.0),
              Text(
                'Acknowledgements:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'Special thanks to the open-source community and all contributors who made this app possible.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 24.0),
              Text(
                'Legal Information:',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 8.0),
              GestureDetector(
                onTap: () => _launchURL('https://www.yourwebsite.com/terms'),
                child: Text(
                  'Terms of Service',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              GestureDetector(
                onTap: () => _launchURL('https://www.yourwebsite.com/privacy'),
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'Version 1.0.0',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black45,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
