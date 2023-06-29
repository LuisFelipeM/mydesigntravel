import 'package:flutter/material.dart';

class multicolorLine extends StatelessWidget {
  const multicolorLine({
    Key? key,
    required this.Text_one,
    required this.Text_two,
    required this.Text_size,
    required this.Text_color_one,
    required this.Text_color_two,
  }) : super(key: key);

  final String Text_one;
  final Color Text_color_one;
  final String Text_two;
  final Color Text_color_two;
  final double Text_size;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 135.0,
          right: 25,
          left: 25,
        ),
        child: ClipRRect(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: Text_one,
                  style: TextStyle(
                    fontSize: Text_size,
                    fontWeight: FontWeight.bold,
                    color: Text_color_one,
                  ),
                ),
                TextSpan(
                  text: Text_two,
                  style: TextStyle(
                    fontSize: Text_size,
                    fontWeight: FontWeight.bold,
                    color: Text_color_two,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
