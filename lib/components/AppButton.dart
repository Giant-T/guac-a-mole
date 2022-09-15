import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final onPressed;

  AppButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
                color: Colors.white, width: 2, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(50)),
      ),
      child: Text(
        'Click Raph !'.toUpperCase(),
        style:
            const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
