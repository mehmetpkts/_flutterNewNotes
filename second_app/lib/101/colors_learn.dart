import 'package:flutter/material.dart';

class ColorrsLearnView extends StatelessWidget {
  const ColorrsLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello'),
      ),
      
      body: Container(
        color: ColorsItems.sulu,
        child: const Text('Learn Flutter'),
      ),
    );
  }
}


class ColorsItems{
  static const Color porshe = Color(0xffEDBF61);

  static const Color sulu = Color.fromARGB(198, 237, 97, 1);
}