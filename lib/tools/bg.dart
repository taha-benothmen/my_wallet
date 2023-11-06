import 'package:flutter/material.dart';

class background extends StatelessWidget {
  const background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bg1.png"),
          fit: BoxFit.cover,
        ),
      ),
    )));
  }
}
