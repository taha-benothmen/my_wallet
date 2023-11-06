import 'package:flutter/material.dart';
import 'package:my_wallet/pages/SignUpPage.dart';
import 'package:my_wallet/pages/getstarted.dart';
import 'package:my_wallet/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ewallet",
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const getstartedscreen(),
    );
  }
}
