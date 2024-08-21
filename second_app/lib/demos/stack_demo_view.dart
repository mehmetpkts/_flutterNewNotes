import 'package:flutter/material.dart';
import 'package:second_app/core/random_image.dart';

class StackDemoViewWidget extends StatelessWidget {
  const StackDemoViewWidget({super.key});
  final double _cardHeight = 50.0;
  final double _cardWidth = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:  Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(bottom:_cardHeight/2,child: const RandomImageWidget(),
                  ), // Positioned.fill(....)   fotoğrafa biçilen alanın tamamını kaplamasını sağlar , buradaki bottom ise fotoğrafı aşağıdan 25 yukarı kaydırmamıza yaradı
                  Positioned(
                      width: _cardWidth,
                      height: _cardHeight,
                      bottom: 0,
                      child: _cardCustom())
                ],
              )),
          const Spacer(
            flex: 6,
          ),
        ],
      ),
    );
  }

  Card _cardCustom() {
    return const Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(),
                    );
  }
}
