import 'package:flutter/material.dart';
import 'package:brewery/ale.dart';

class BlurImageDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size * 0.7;

    return Center(
      child: BreweryBlurImage(
        path: "assets/images/image1.jpg",
        height: size.height,
        width: size.width,
      ),
    );
  }
}
