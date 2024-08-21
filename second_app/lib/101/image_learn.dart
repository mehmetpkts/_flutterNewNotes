import 'package:flutter/material.dart';

class ImageLearnWidget extends StatelessWidget {
  const ImageLearnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          emptyBox(),
          // const NewFoto(),
          // emptyBox(),
          // const NewFoto(),
          // emptyBox(),
          // const NewFoto(),
          // // ya da şöyle kullanılabilir :
          // emptyBox(),
          // Center(
          //   child: SizedBox(
          //     width: 100,
          //     height: 100,
          //     child: Image.asset(
          //       NewFoto2().fotoNew,
          //       fit: BoxFit.contain,
          //     ),
          //   ),
          // ),
          Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: PngImg(
                name: NewFoto2.fotoNew3,
              ),
            ),
          ),
          emptyBox(),
          Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTykqqqacW1AKiW_1Kb5oaj49FF9YASzXAnUA&s",
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.abc_outlined),  // olası bir data probleminde projede hata almamak için yapılması gerekiyor.
              ), // internetten fotoğraf çekeceğimiz zamanlarda kullanırız.
            ),
          ),
        ],
      ),
    );
  }

  SizedBox emptyBox() => const SizedBox(
        height: 10,
      );
}

class NewFoto extends StatelessWidget {
  const NewFoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: Image.asset(
          "assets/1.jpg",
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

// ya da şöyle kullanılabilir:

class NewFoto2 {
  final String fotoNew = "assets/1.jpg";
  final String fotoNew2 = "assets/png/foto11.png";
  static String fotoNew3 = "foto12";
}

// daha flexible bir yapıda bir kod yazmak istersek şunu yaparız :

class PngImg extends StatelessWidget {
  const PngImg({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWidthPath, // daha temiz bir görüntü oluşturmuş olduk.
      fit: BoxFit.contain,
    );
  }

  String get _nameWidthPath => "assets/png/$name.png";
}
