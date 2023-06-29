import 'package:flutter/material.dart';
import 'package:my_design/widgets/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Background(),
        DarkGradient(),
        WelcomeText(),
      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/La_Paz.jpg'), fit: BoxFit.cover),
      ),
    );
  }
}

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 150),
      child: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: _CustomText(
                  title: "Explore Bolivia",
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: _CustomText(
                  title:
                      "We'll help you find the best expiriences & adventures",
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: FloatingActionButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {
                    Navigator.of(context).pushNamed('home_screen');
                  },
                  child: Icon(
                    Icons.arrow_right_alt_sharp,
                    color: Colors.blueGrey,
                    size: 30,
                  ),
                  backgroundColor: Colors.white60,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomText extends StatelessWidget {
  const _CustomText({
    Key? key,
    required this.fontSize,
    required this.title,
  }) : super(key: key);

  final String title;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: Colors.white),
      textAlign: TextAlign.center,
    );
  }
}
