import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatelessWidget {
  const CurrencyConverterPage({super.key});

  @override
  //build function
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)));

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "00",
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'ENTER YOUR AMOUNT IN USD',
                hintStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                prefixIcon: Icon(Icons.monetization_on),
                prefixIconColor: Colors.black,
                focusedBorder: border,
                enabledBorder: border,
              ),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
          ),
          //     //button

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),

              // style: const ButtonStyle(
              //     backgroundColor: MaterialStatePropertyAll(Colors.black),
              //     foregroundColor: MaterialStatePropertyAll(Colors.white),
              //     //fixedSize: MaterialStatePropertyAll(Size(200, 50))
              //     minimumSize:
              //         MaterialStatePropertyAll(Size(double.infinity, 50))),
              onPressed: () {
                if (kDebugMode) {
                  print('button cliked');
                }
              },
              child: const Text('CONVERT'),
            ),
          ),
        ],
      ),
    );
  }
}
