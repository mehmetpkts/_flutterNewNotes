import 'package:flutter/material.dart';

class CardLearnWidget extends StatelessWidget {
  const CardLearnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Card(
            // card componentimiz bize elevationlu sizedboxlar sağlar.
            margin: pageMargins
                .matginOne, // margin ise padding'in dıştan verilmiş halidir.
            color: Colors.white,
            child: SizedBox(
              height: 100,
              width: 100,
            ),
          ),
          Card(
            // card componentimiz bize elevationlu sizedboxlar sağlar.
            margin: pageMargins
                .matginOne, // margin ise padding'in dıştan verilmiş halidir.
            color: Theme.of(context).colorScheme.error,
            // shape: const StadiumBorder(),  // stadyum şeklini alır.
            // shape: const CircleBorder(),  // yuvarlak bir şekil verir.
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    10)), // bu da direkt olarak bize bir kare veya dikdörtgen verir ve bizde bunu borderRadius ile istersek köşelerini istediğimiz şekilde radius ekleyebiliriz.
            child: const SizedBox(
              height: 100,
              width: 200,
            ),
          ),
          const Card(
              // card componentimiz bize elevationlu sizedboxlar sağlar.
              margin: pageMargins
                  .matginOne, // margin ise padding'in dıştan verilmiş halidir.
              color: Colors.white,
              child: SizedBox(
                height: 100,
                width: 100,
                child: Center(
                  child: Text(
                    "mehmet",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )),
            

          // burada da gördüğümüz gibi aşağıda class şeklinde yaptığımızda her yerde aynı özellikte kullandığımız class'lara istediğimiz parametreyi içine yazarak işlerimizi daha da kolaylaştırdık.
          const _NewCardStyle(
              child: SizedBox(
            height: 100,
            width: 100,
            child: Center(
              child: Text(
                "pektaş",
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
          ) // hazır olarak bu şekilde kullanmış olduk
        ],
      ),
    );
  }
}

class pageMargins {
  static const matginOne = EdgeInsets.all(10);
}

// defalarca kez aynı card yapısını kullanmaktansa bir class oluşturup class'tan çekmek en doğrusu olacaktır:

class _NewCardStyle extends StatelessWidget {
  const _NewCardStyle({super.key, required this.child});
  final Widget child;


  @override
  Widget build(BuildContext context) {
    return Card(
        // card componentimiz bize elevationlu sizedboxlar sağlar.
        margin: pageMargins
            .matginOne, // margin ise padding'in dıştan verilmiş halidir.
        color: Colors.white,
        child: child);
  }
}
