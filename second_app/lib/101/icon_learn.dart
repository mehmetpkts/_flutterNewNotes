import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final _title = 'Merhaba';

  final IconeLearnColor iconeLearnColor = IconeLearnColor();
  final IconeLearnSize iconeLearnSize = IconeLearnSize();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: Theme.of(context).colorScheme.error,
              size: iconeLearnSize.iconeSize,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: iconeLearnColor.iconeColor,
              size: iconeLearnSize.iconeSize,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.message_outlined,
                color: IconeLearnColor().iconeColor,
                size: IconeLearnSize.iconeSize2x),   // static yapısını kullanılarak yapılan class yapısı
          ),
        ],
      ),
    );
  }
}

class IconeLearnColor {
  final Color iconeColor = const Color(0xff8012b9);
}

class IconeLearnSize {
  final double iconeSize = 40;
  static const double iconeSize2x = 80;
}
