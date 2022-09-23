import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:guac_a_mole/components/AppButtonSonarDonut.dart';
import 'package:guac_a_mole/components/Background.dart';

class TapToStart extends StatefulWidget {
  const TapToStart({super.key});

  @override
  _TapToStartState createState() => _TapToStartState();
}

class _TapToStartState extends State<TapToStart>
    with SingleTickerProviderStateMixin {
  double movement = 0.0;
  late AnimationController controller;
  late Animation<double> _animation;

  @override
  void initState() {
    // repeated animation
    controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _animation = Tween<double>(begin: 0, end: 55)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {
          movement = _animation.value;
        });
      });

    return Scaffold(
      backgroundColor: const Color.fromARGB(0xff, 11, 29, 49),
      body: Background(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppButtonSonarDonut(
                  size: 120,
                  color: const Color.fromARGB(0xff, 0x58, 0xD1, 0xFF),
                  onPressed: () {
                    Navigator.pushNamed(context, '/game');
                  }),
              SizedBox(
                width: 50,
                height: 80,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: movement),
                    child: const Image(
                      image: Svg('images/tapsIcon.svg',
                          color: Color.fromARGB(0xff, 0x58, 0xD1, 0xFF),
                          size: Size(30, 30)),
                      repeat: ImageRepeat.repeat,
                    ),
                  ),
                ),
              ),
              Text("Tap the circle\nto start".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: "fa-solid-900",
                    color: Colors.white,
                    fontSize: 20,
                  ))
            ]),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
