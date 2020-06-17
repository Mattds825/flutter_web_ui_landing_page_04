import 'package:flutter/material.dart';

class CarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 200.0,
          left: 112.0,
          child: Image.asset(
            'car.png',
            width: 1270,
            height: 540,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }
}
