import 'package:flutter/material.dart';
import 'package:pinkerest/screens/descriptionn.dart';
import 'package:pinkerest/screens/logoScreen.dart';
import 'package:pinkerest/screens/productPage.dart';
//import 'package:pinkerest/screens/productPage.dart';

void main() {
  runApp(pinkerest());
}

class pinkerest extends StatefulWidget {
  const pinkerest({super.key});

  @override
  State<pinkerest> createState() => _pinkerestState();
}

class _pinkerestState extends State<pinkerest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "p":(context) => ProductPage(),
        "p2":(context) => descriptionn()
      },
      debugShowCheckedModeBanner: false,
      home: logoScreen(),
    );
  }
}
