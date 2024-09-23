import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class Slider1 extends StatelessWidget {
  final margin;
  const Slider1({super.key, this.margin});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 160.0,
        width: double.infinity,
        margin:margin?? const EdgeInsets.only(bottom: 20),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: AnotherCarousel(
            dotSize: 0,
            dotSpacing: 10,
            dotBgColor: Colors.transparent,
            images: [
              Image.asset(
                "assets/images/slider/slider1.jpg",
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/images/slider/slider2.jpg",
                fit: BoxFit.cover,
              ),
              Image.asset(
                "assets/images/slider/slider3.jpg",
                fit: BoxFit.cover,
              ),
            ]));
  }
}
