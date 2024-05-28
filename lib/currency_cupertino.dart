// import 'package:flutter/cupertino.dart';

// class CurrencyConverterCupertinopage extends StatefulWidget {
//   const CurrencyConverterCupertinopage({super.key});

//   @override
//   State<CurrencyConverterCupertinopage> createState() =>
//       _CurrencyConverterCupertinopageState();
// }

// class _CurrencyConverterCupertinopageState
//     extends State<CurrencyConverterCupertinopage> {
//   double result = 0;
//   final TextEditingController textEditingController = TextEditingController();

//   void cal() {
//     result = double.parse(textEditingController.text) * 81;
//     setState(() {});
//     //setState(() => result = double.parse(textEditingController.text) * 81);
//   }

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     const border = OutlineInputBorder(
//       borderSide: BorderSide(
//         width: 2.0,
//         style: BorderStyle.solid,
//       ),
//       borderRadius: BorderRadius.all(Radius.circular(5)),
//     );

//     return CupertinoPageScaffold(
//         backgroundColor: CupertinoColors.black,
//         navigationBar: const CupertinoNavigationBar(
//           middle: Text(
//             "CURRENCY APP ",
//           ),
//           backgroundColor: Color.fromARGB(255, 207, 184, 35),
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   'INR ${result.toString()}',
//                   style: const TextStyle(
//                       fontSize: 45, fontWeight: FontWeight.bold),
//                 ),
//                 CupertinoTextField(
//                   controller: textEditingController,
//                   style: const TextStyle(color: CupertinoColors.black),
//                   decoration: const BoxDecoration(),
//                   const _kDefaultRoundedBorderDecoration(
//                     filled: true,
//                     fillColor: Colors.white,
//                     hintText: 'ENTER YOUR AMOUNT IN USD',
//                     hintStyle: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                     prefixIcon: Icon(Icons.monetization_on),
//                     prefixIconColor: Colors.black,
//                     focusedBorder: border,
//                     enabledBorder: border,
//                   ),
//                   keyboardType:
//                       const TextInputType.numberWithOptions(decimal: true),
//                 ),

//                 const SizedBox(
//                   height: 10,
//                 ),
//                 //     //button

//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     minimumSize: const Size(double.infinity, 50),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                   ),
//                   onPressed: cal,
//                   child: const Text('CONVERT'),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
