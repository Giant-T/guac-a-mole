import 'package:flutter/material.dart';
import 'dart:io';

class Gradiant extends StatefulWidget {

  final Widget child;
  final int r;
  final int g;
  final int b;

  const Gradiant({Key? key, required this.child, required this.r, required this.g, required this.b}) : super(key: key);

  @override
  State<Gradiant> createState() => _GradiantState(this.child, this.r, this.g, this.b);
}

class _GradiantState extends State<Gradiant> {

  final Widget child;
  final int r;
  final int g;
  final int b;
  int intesity = 0;
  bool isIncreasing = true;


  _GradiantState(this.child, this.r, this.g, this.b);

  void changeIntesity () async {

    while(isIncreasing) {
      for (int i = 0; i < 12; i++) {
        //wait 0.1 second
        await Future.delayed(Duration(milliseconds: 150));
        //change intesity
        setState(() {
          intesity = intesity + 1;
        });
      }
      for (int i = 0; i < 12; i++) {
        //wait 0.1 second
        await Future.delayed(Duration(milliseconds: 150));
        //change intesity
        setState(() {
          intesity = intesity - 1;
        });
      }
    }
  }


  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => changeIntesity());
  }

  void dispose() {
    super.dispose();
    isIncreasing = false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [
              0.2,
              0.4,
              0.7
            ],
            colors: [
              Color.fromARGB((intesity/2).round()+0x3A, r, g, b),
              Color.fromARGB(intesity+0x1A,  r, g, b),
              Colors.transparent,
            ],
          )
      ),
      child: child,
    );
  }
}


