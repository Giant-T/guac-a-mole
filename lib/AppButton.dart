import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final onPressed;

  AppButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          'Click Raph !'.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,

            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Colors.white,
                    width: 2,
                    style: BorderStyle.solid
                ), borderRadius: BorderRadius.circular(50)            ),
        ),
      ),
    );

  }
}