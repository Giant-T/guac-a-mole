import 'package:flutter/material.dart';

class AppTextForm extends StatelessWidget {
  final String labeltext;
  late String hintText;

  AppTextForm({required this.labeltext, String? hintText, super.key}) {
    this.hintText = hintText ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'fa-solid-900'),
          labelText: labeltext.toUpperCase(),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(width: 3, color: Color.fromARGB(0xff, 88, 209, 255))),
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: const TextStyle(fontSize: 20.0, color:  Color.fromARGB(0xff, 88, 209, 255)),
        ),
      ),
    );
  }
}
