import 'package:flutter/material.dart';

class SquareFloatingActionButton extends StatelessWidget {
  const SquareFloatingActionButton({
    Key? key,
    required this.buttonName,
    required this.iconName,
  }) : super(key: key);
  final String buttonName;
  final Icon iconName;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Wrap(
          spacing: 10.0,
          runSpacing: 15.0,
          alignment: WrapAlignment.center,
          direction: Axis.vertical,
          children: [
            FloatingActionButton(
              child: iconName,
              backgroundColor: Colors.grey[400],
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
            ),
            SizedBox(height: 2),
            Container(
              alignment: Alignment.centerLeft,
              width: 80,
              height: 15,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    buttonName,
                    overflow: TextOverflow.visible,
                    maxLines: 1,
                    textScaleFactor: 2.5,
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
