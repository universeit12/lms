import 'package:flutter/material.dart';

Widget buildTextField({
  required String hintText,
  final prefixIcon,
  final readOnly,
  required String initialValue,
  required Function(String) onChanged,
  int maxLines = 1,
}) {
  return TextField(
    maxLines: maxLines,
    controller: TextEditingController(text: initialValue),
    readOnly: readOnly??false,
    decoration: InputDecoration(
      hintText: hintText,
      prefixIcon: prefixIcon,
      labelStyle: TextStyle(color: Colors.grey[800]),
      filled: true,
      fillColor: Colors.white,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: Colors.grey.shade400),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: Colors.blueAccent, width: 2),
      ),
    ),
    style: TextStyle(color: Colors.black),
    onChanged: onChanged,
  );
}
