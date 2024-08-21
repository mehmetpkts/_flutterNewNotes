import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: [
          SizedBox(
            width:
                300, // burada verdiğimiz değerler responsive yapıda değildir , ilerdeki konularda responsive yapılar öğrenilecek.
            height: 200,
            child: Text('a' * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 45,
            child: Text("m" * 500),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            // Container'in SizedBox'tan farkı
            height: 50,
            constraints: const BoxConstraints(
              maxWidth: 150,
              minWidth: 20,
              maxHeight: 100,
            ), // bu yapı bize Container içerisinde kullandığımız şeylerin scale bir şekilde yapılmasına olanak sağlar.
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration:BoxDecorationProject(),              // böyle hem alttaki gibi hem de buradaki gibi tanımlama yapılabilir.
            // decoration:NewBoxDecoratino.newDecoration,
            child: Text('ab' *
                1), // mesela 10 tane a yazığımızda 10 tane a kadar alan oluşturur 20 tane a yazdığımızda ise 20tane a lık kadar alan oluşturur.
          ),
        ]) // bize bir kutu oluşturur.
        );
  }
}



// boxDecoration için yaptığımız birçok özelliği class yapısı ile daha iyi ve daha düzenli iki şekilde yapabiliriz :

// extends ve super yapısını kullanarak:

class BoxDecorationProject extends BoxDecoration{
  BoxDecorationProject():super(
                color: Colors.blue,
                border: Border.all(width: 5, color: Colors.white12),
                boxShadow: const [                                                    // bu işlem yapıldıktan sonra gidilir ve boxDecoration olan yere bu class verilir.
                  BoxShadow(offset: Offset(0.1, 1), blurRadius: 12)
                ],
                gradient:
                    const LinearGradient(colors: [Colors.yellow, Colors.red]),
                    borderRadius: BorderRadius.circular(10));
}

// ya da normal class ile de bu işlemi yapabiliriz:

class NewBoxDecoratino{
  static BoxDecoration newDecoration = BoxDecoration(
                border: Border.all(width: 5, color: Colors.white12),
                boxShadow: const [                                                    // bu işlem yapıldıktan sonra gidilir ve boxDecoration olan yere bu class verilir.
                  BoxShadow(offset: Offset(0.1, 1), blurRadius: 12)
                ],
                gradient:
                    const LinearGradient(colors: [Colors.yellow, Colors.red]),
                    borderRadius: BorderRadius.circular(10));
  }