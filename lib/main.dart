import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/currency_converter_page.dart';
import 'package:flutter_application_1/currency_cupertino.dart';

//Entry Point
void main() {
  runApp(const MyApp());
}

//3 type of widget
//1. stateless
//2. statefull
//3. inherited

//Two Design System
//1.Material Design
//2.Cupertino Design

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //1.Material Design
    return const MaterialApp(home: CurrencyConverterMaterialPage());
  }
}

// class MyCupertinoApp extends StatelessWidget {
//   const MyCupertinoApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const CupertinoApp(
//       home: CurrencyConverterCupertinopage(),
//     );
//   }
// }
