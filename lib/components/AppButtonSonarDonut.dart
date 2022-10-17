import 'package:guac_a_mole/components/SonarDonut.dart';
import 'package:flutter/material.dart';

class AppButtonSonarDonut extends StatefulWidget {
  final double size;
  final Color color;
  final Function() onPressed;
  const AppButtonSonarDonut(
      {required this.size,
      required this.color,
      required this.onPressed,
      super.key});

  @override
  State<AppButtonSonarDonut> createState() => _AppButtonSonarDonut();
}

class _AppButtonSonarDonut extends State<AppButtonSonarDonut> {
  late double _size;

  @override
  void initState() {
    super.initState();
    _size = widget.size * 0.5;
  }

  void _sizeDown(PointerEvent details) {
    setState(() {
      _size = widget.size * 0.5;
    });
  }

  void _sizeUp(PointerEvent details) {
    setState(() {
      _size = widget.size;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerUp: ((event) {
        _sizeDown(event);
        widget.onPressed();
      }),
      onPointerDown: _sizeUp,
      child: SizedBox(
        width: widget.size,
        height: widget.size,
        child: Center(child: SonarDonut(size: _size, color: widget.color)),
      ),
    );
  }
}
