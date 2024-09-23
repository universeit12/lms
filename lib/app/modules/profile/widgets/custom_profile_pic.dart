import 'package:flutter/material.dart';

class CustomProfilePic extends StatelessWidget {
  const CustomProfilePic({super.key, this.image});
  final image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
        border: Border.all(
          color: Colors.blueAccent,
          width: 2,
        ),
      ),
    );
  }
}
