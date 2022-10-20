import 'package:flutter/material.dart';

// create above class but stateful with value
class AppTextForm extends StatefulWidget {
  final String labeltext;
  late String hintText;
  late String value;

  AppTextForm(
      {required this.labeltext, String? hintText, String? value, super.key}) {
    this.hintText = hintText ?? "";
    this.value = value ?? "";
  }

  _AppTextFormState createState() => _AppTextFormState();
}

class _AppTextFormState extends State<AppTextForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        initialValue: widget.value,
        decoration: InputDecoration(
          labelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'fa-solid-900'),
          labelText: widget.labeltext.toUpperCase(),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                  width: 3, color: Color.fromARGB(0xff, 88, 209, 255))),
          hintText: widget.hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintStyle: const TextStyle(
              fontSize: 20.0, color: Color.fromARGB(0xff, 88, 209, 255)),
        ),
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'fa-solid-900'),
      ),
    );
  }
}
