import 'package:flutter/material.dart';

class TextFieldLearnView extends StatefulWidget {
  const TextFieldLearnView({super.key});

  @override
  State<TextFieldLearnView> createState() => _TextFieldLearnViewState();
}

class _TextFieldLearnViewState extends State<TextFieldLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  TextField(
        maxLength: 20,
        buildCounter: (BuildContext context, {int? currentLength, bool?  isFocused, int?  maxLength}) {
          return Container(
            height: 10,
            width: 40,
            color: Colors.green[100 * ((currentLength ?? 0 ) ~/ 2)],
          );  
        },
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.mail),
          border: OutlineInputBorder(),
          labelText: 'Mail',
          // hintText: 'Mail',     // labelText'ten farkı kutunun içerisinde Mail yazar.
          fillColor: Colors.blue,
          filled: true,   // fillColor ile backgroundColor veriyorsak filled ile true olduğunu belirtmemiz gerekir.
          hoverColor: Colors.deepOrange,
        ),
      ),
    );
  }
}