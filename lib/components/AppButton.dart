import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  late Color borderColor;
  late bool isBold;

  AppButton(
      {required this.onPressed,
      required this.text,
      Color? borderColor,
      bool? isBold,
      super.key}) {
    this.borderColor = borderColor ?? Colors.white;
    this.isBold = isBold ?? false;
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            minimumSize: Size(screenWidth * 0.75, 75),
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: borderColor, width: 2, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(50)),
          ),
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
                fontFamily: 'fa-solid-900',
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
                fontSize: 20,
                color: Colors.white),
          ),
        ));
  }
}
