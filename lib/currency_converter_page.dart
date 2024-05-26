// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// class CurrencyConverterPage extends StatefulWidget {
//   const CurrencyConverterPage({super.key});

//   @override
//   State<CurrencyConverterPage> createState() =>
//       _CurrencyConverterPagestate<CurrencyConverterPage>();
// }

// class _CurrencyConverterPagestate extends State<CurrencyConverterPage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold();
//   }
// }

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPage();
}

class _CurrencyConverterMaterialPage
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    print('rebuilt init');
  }

  @override
  //build function
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(5)),
    );

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'INR ${result.toString()}',
            style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: textEditingController,
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'ENTER YOUR AMOUNT IN USD',
                hintStyle: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                prefixIcon: const Icon(Icons.monetization_on),
                prefixIconColor: Colors.black,
                focusedBorder: border,
                enabledBorder: border,
              ),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
          ),
          //     //button

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                setState(() {
                  result = double.parse(textEditingController.text) * 81;
                });
              },
              child: const Text('CONVERT'),
            ),
          ),
        ],
      ),
    );
  }
}


















// class CurrencyConverterPagee extends StatelessWidget {
//   const CurrencyConverterPagee({super.key});

//   @override
//   //build function
//   Widget build(BuildContext context) {
//     double result = 0;
//     final TextEditingController textEditingController = TextEditingController();

//     final border = OutlineInputBorder(
//       borderSide: const BorderSide(
//         width: 2.0,
//         style: BorderStyle.solid,
//       ),
//       borderRadius: const BorderRadius.all(Radius.circular(5)),
//     );

//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(
//             result.toString(),
//             style: const TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: TextField(
//               controller: textEditingController,
//               style: const TextStyle(color: Colors.black),
//               decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.white,
//                 hintText: 'ENTER YOUR AMOUNT IN USD',
//                 hintStyle: const TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//                 prefixIcon: const Icon(Icons.monetization_on),
//                 prefixIconColor: Colors.black,
//                 focusedBorder: border,
//                 enabledBorder: border,
//               ),
//               keyboardType:
//                   const TextInputType.numberWithOptions(decimal: true),
//             ),
//           ),
//           //     //button

//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.black,
//                 foregroundColor: Colors.white,
//                 minimumSize: const Size(double.infinity, 50),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//               ),
//               onPressed: () {
//                 result = double.parse(textEditingController.text) * 81;
//               },
//               child: const Text('CONVERT'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
