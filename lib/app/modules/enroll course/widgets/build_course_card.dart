import 'package:flutter/material.dart';

class BuildCourseCard extends StatelessWidget {
  const BuildCourseCard(
      {super.key,
      this.onTap,
      this.title,
      this.icon,
      this.image,
      this.subtitle});
  final onTap;
  final title;
  final icon;
  final image;
  final subtitle;

  @override
  Widget build(BuildContext context) {
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
        leading: image,
        subtitle: Text(subtitle ?? ' '),
        title: Text(
          title,
          style: TextStyle(
              color: Colors.black, fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
        onTap: onTap,
        trailing: icon,
      ),
    );
  }
}
