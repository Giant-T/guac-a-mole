import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        const Positioned.fill(
            child: Image(
          image: Svg('images/backgroundPattern.svg',
              color: Color.fromARGB(229, 11, 29, 49), size: Size(50, 50)),
          repeat: ImageRepeat.repeat,
        )),
        child
      ],
    );
  }
}
