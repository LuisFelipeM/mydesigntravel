import 'package:flutter/material.dart';

class DarkGradient extends StatelessWidget {
  const DarkGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
            0.2,
            0.8
          ],
              colors: [
            Colors.white.withOpacity(0.2),
            Colors.black.withOpacity(0.5),
          ])),
    );
  }
}
