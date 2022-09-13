import 'package:flutter/material.dart';
import 'package:guac_a_mole/AppButton.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AppButton(
          onPressed: () {
            print('Bien joué ! Même si c\'est Will qui a cliqué.');
          },
        ),
      ),
      //backgroundColor
      backgroundColor: Colors.blue[200],
    );
  }
}
