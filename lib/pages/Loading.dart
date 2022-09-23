import 'package:flutter/material.dart';
import 'package:guac_a_mole/components/AppButtonSonarDonut.dart';
import 'package:guac_a_mole/components/Background.dart';

class Loading extends StatefulWidget {
  const Loading({required Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1, milliseconds: 500), () {
      Navigator.popAndPushNamed(context, '/home');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0xff, 11, 29, 49),
      body: Background(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppButtonSonarDonut(
                  size: 180, color: Colors.white, onPressed: () {}),
              Text("Loading Awesome stuff".toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "fa-solid-900",
                    color: Colors.white,
                    fontSize: 25,
                  ))
            ]),
      ),
    );
  }
}
 @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
