//Entry Point
import 'package:flutter/material.dart';
import 'package:flutter_application_1/currency_converter_page.dart';

void main() {
  runApp(const MyApp());
}
//3 type of widget
//1. stateless
//2. statefull
//3. inherited

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //Two Design System
    //1.Material Design
    //2.Cupertino Design

    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 114, 115, 118),
        appBar: AppBar(
          title: const Text(
            "CURRENCY APP ",
          ),
          backgroundColor: const Color.fromARGB(255, 207, 184, 35),
        ),
        body: CurrencyConverterPage(),
      ),
    );
  }
}
