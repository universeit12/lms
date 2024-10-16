import 'package:flutter/material.dart';

import '../../../widgets/app_button.dart';

void CourseDialog(BuildContext context, titlle, subtitle, buttonText1,
    buttonText2, buttonOntap1, buttonOntap2) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 20,
        child: Container(
          padding: const EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [Colors.redAccent, Colors.amber],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/logo/applogo.png'),
                  )),
              const SizedBox(height: 15),
              Text(
                titlle,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                subtitle,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    height: 1.5,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(width: 10),
                  AppButton(text: buttonText1 ?? '', onTap: buttonOntap1),
                  AppButton(
                    text: buttonText2 ?? '',
                    onTap: buttonOntap2,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
