import 'package:flutter/material.dart';

Widget ProfileCard(
    {required String title,
    required IconData icon,
    Widget? trailing,
    required Function() onTap}) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      gradient: LinearGradient(
        colors: [Colors.blue.withOpacity(0.2), Colors.white.withOpacity(0.1)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      border: Border.all(color: Colors.grey.withOpacity(0.3)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          blurRadius: 10,
          offset: Offset(0, 10),
        ),
      ],
    ),
    child: ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
      trailing: trailing ?? Icon(Icons.arrow_forward_ios, color: Colors.black),
      onTap: onTap,
    ),
  );
}
