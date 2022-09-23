import 'package:flutter/material.dart';
import 'package:guac_a_mole/components/AppButtonSonarDonut.dart';
import 'package:guac_a_mole/components/Background.dart';

class Loading extends StatefulWidget {
  const Loading({required Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  bool _visible = true;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 100), () {
      fading();
    });
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.popAndPushNamed(context, '/home');
    });
    super.initState();

  }

  void fading() {
    setState(() {
      _visible = !_visible;
    });
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
              AnimatedOpacity(
                opacity: _visible ? 1.0 : 0.0,
                duration: const Duration(seconds: 2),
                child: AppButtonSonarDonut(
                  size: 180, color: Colors.white, onPressed: () {}
                ),
              ),
             AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 1000),
               child:Text("Loading Awesome stuff".toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "fa-solid-900",
                    color: Colors.white,
                    fontSize: 25,
                  )
               ),
             ),
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
