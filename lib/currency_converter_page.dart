import 'package:flutter/material.dart';

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

  void cal() {
    result = double.parse(textEditingController.text) * 81;
    setState(() {});
    //setState(() => result = double.parse(textEditingController.text) * 81);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  //build function
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    );

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 114, 115, 118),
        appBar: AppBar(
          title: const Text(
            "CURRENCY APP ",
          ),
          backgroundColor: const Color.fromARGB(255, 207, 184, 35),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'INR ${result.toString()}',
                  style: const TextStyle(
                      fontSize: 45, fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: textEditingController,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
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
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                ),

                const SizedBox(
                  height: 10,
                ),
                //     //button

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: cal,
                  child: const Text('CONVERT'),
                ),
              ],
            ),
          ),
        ));
  }
}
