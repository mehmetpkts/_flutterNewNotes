import 'package:flutter/material.dart';

class RandomImageWidget extends StatelessWidget {
  const RandomImageWidget({super.key, this.height=100});
  final imgUrl = 'https://picsum.photos/id/237/200/300';
  final double height;
  @override
  Widget build(BuildContext context) {
    return Image.network(imgUrl , height: 100, fit: BoxFit.cover);
  }
}