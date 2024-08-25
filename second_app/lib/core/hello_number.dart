import 'package:flutter/material.dart';
import 'package:second_app/product/language/language_items.dart';

class HelloNumberWidget extends StatefulWidget {
  const HelloNumberWidget({super.key});

  @override
  State<HelloNumberWidget> createState() => _HelloNumberWidgetState();
}

class _HelloNumberWidgetState extends State<HelloNumberWidget> {
  final String _helloString = LanguageItems.welcomeTitle;
  int _countValue = 0;
  void _updateCounter(){
    setState(() {
              ++_countValue;
            });
  }


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {
            setState(() {
              _updateCounter();
            });
          }, child: Text("$_helloString $_countValue"));
  }
}