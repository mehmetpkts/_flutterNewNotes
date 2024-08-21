import 'package:flutter/material.dart';

// bir yerde üst üste binme varsa orada kesinlikle stack vardır.

class StackLearnWidget extends StatelessWidget {
  const StackLearnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              color: Colors.blue, // son verilen ilk verilenin üstüne gelir.
              height: 100,
            ),
          ),
          Positioned(
              right: 0,
              left: 0,
              top: 25,
              // bottom: 0,
              child: Container(
                color: Colors.green,
                height: 100,
              ))
        ],
      ), // bu şekilde call yapılır.
    );
  }
}
