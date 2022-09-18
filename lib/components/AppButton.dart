import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;

  const AppButton({required this.onPressed, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            minimumSize: Size(screenWidth * 0.75, 100),
            shape: RoundedRectangleBorder(
                side: const BorderSide(
                    color: Colors.white, width: 2, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(50)),
          ),
          child: Text(
            text.toUpperCase(),
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ));
  }
}
