import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class Background extends StatelessWidget {
  final Widget child;
  final Color color;

  const Background(
      {Key? key,
      required this.child,
      this.color = const Color.fromARGB(229, 11, 29, 49)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Svg svg = const Svg('images/backgroundPattern.svg', size: Size(50, 50));

    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        Positioned.fill(
            child: Image(
          image: svg,
          color: color,
          colorBlendMode: BlendMode.srcATop,
          repeat: ImageRepeat.repeat,
        )),
        child
      ],
    );
  }
}
