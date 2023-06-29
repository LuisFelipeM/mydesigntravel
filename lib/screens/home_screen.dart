import 'package:flutter/material.dart';
import 'package:my_design/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavBarButton(icon: Icon(Icons.home)),
              NavBarButton(icon: Icon(Icons.search)),
              NavBarButton(icon: Icon(Icons.heart_broken)),
              NavBarButton(icon: Icon(Icons.pets_outlined)),
            ],
          ),
        ),
      ),
      body: Stack(
        children: [
          TopMenu(),
          multicolorLine(
            Text_one: 'Hello,',
            Text_color_one: Colors.red,
            Text_two: 'what are you looking for?',
            Text_color_two: Colors.blueGrey,
            Text_size: 35,
          ),
          _Options(),
          Subtittle(),
          LocationView(
            images: [
              'assets/uyuni.jpg',
              'assets/La_Paz.jpg',
              'assets/Copacabana.jpg',
              'assets/tiwanaku.jpg',
            ],
          ),
        ],
      ),
    );
  }
}

class NavBarButton extends StatelessWidget {
  const NavBarButton({
    Key? key,
    required this.icon,
  }) : super(key: key);
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: IconButton(
        onPressed: () {},
        icon: icon,
        color: Colors.blueGrey,
      ),
    );
  }
}

class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 45,
          left: 25,
          right: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Icon(
                  Icons.menu_open,
                  size: 40,
                  color: Colors.grey[400],
                )
              ],
            ),
            Column(
              children: [
                ProfilePicture(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Options extends StatelessWidget {
  const _Options({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 250.0,
          right: 25,
          left: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SquareFloatingActionButton(
              buttonName: 'Acomodation',
              iconName: Icon(Icons.home, size: 35),
            ),
            SquareFloatingActionButton(
              buttonName: 'Experiences',
              iconName: Icon(Icons.park_outlined, size: 35),
            ),
            SquareFloatingActionButton(
              buttonName: '  Adventures',
              iconName: Icon(Icons.nordic_walking_outlined, size: 35),
            ),
            SquareFloatingActionButton(
              buttonName: '   Fligths',
              iconName: Icon(Icons.flight, size: 35),
            )
          ],
        ),
      ),
    );
  }
}

class Subtittle extends StatelessWidget {
  const Subtittle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 400,
              left: 25,
              right: 25,
            ),
            child: Column(
              children: [
                Text(
                  'Best Experiences',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 400,
              left: 150,
              right: 25,
            ),
            child: Column(
              children: [
                Icon(
                  Icons.more_horiz,
                  size: 30,
                  color: Colors.blueGrey,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
