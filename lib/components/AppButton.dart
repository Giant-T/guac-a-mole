import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  final void Function() onPressed;
  final String text;
  late Color highlightColor;
  late bool isBold;
  bool pressed = false;

  AppButton({
    required this.onPressed,
    required this.text,
    this.highlightColor = Colors.white,
    this.isBold = false,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 200));
    _controller.stop();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: 75,
        width: screenWidth * 0.75,
        child: ScaleTransition(
            scale: Tween<double>(begin: 1, end: 1.1).animate(_controller),
            child: Material(
                shape: RoundedRectangleBorder(
                    side: BorderSide(
                        color: widget.highlightColor,
                        width: 2,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(50)),
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: widget.highlightColor,
                  customBorder: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onTap: () {
                    widget.onPressed();
                  },
                  onTapDown: (TapDownDetails details) {
                    _controller.forward(from: 0);
                    setState(() {
                      widget.pressed = true;
                    });
                  },
                  onTapCancel: () {
                    _controller.reset();
                    setState(() {
                      widget.pressed = false;
                    });
                  },
                  onTapUp: (details) {
                    _controller.reset();
                    setState(() {
                      widget.pressed = false;
                    });
                  },
                  child: Center(
                    child: Text(
                      widget.text.toUpperCase(),
                      style: TextStyle(
                          fontFamily: 'fa-solid-900',
                          fontWeight: widget.isBold
                              ? FontWeight.bold
                              : FontWeight.normal,
                          fontSize: 20,
                          color: widget.pressed
                              ? const Color.fromARGB(0xff, 11, 29, 49)
                              : Colors.white),
                    ),
                  ),
                ))));
  }
}
