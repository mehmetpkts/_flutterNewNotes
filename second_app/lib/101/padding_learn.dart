import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});
  // text'ler burada yazmalı

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.projePaddingGo, // eğer bütün sayfaya padding vermek istiyorsak böyle yapmamız gerekir
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ), // bu kullanım doğru bir kullanım değildir.
            Container(
              // illa her şey için padding widgetini kullanmak gerekmez , mesela Container widgetinin içinde padding yapısı vardır:
              padding: const EdgeInsets.all(10),  // normal padding kullanımı ile aynı işlevi görür.
              color: Colors.white,
              height: 100,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: ProjectPadding.pageRightOnly +    // eğer ayrı bir padding işlemi yapıyorsak "+" işaretini kullanarak yapmamız gererkir.
                  const EdgeInsets.only(
                      top:
                          50), // only'de başka bir padding gösterim şeklidir.
              child: const Text('Merhaba'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding{
  static const  projePaddingGo = EdgeInsets.symmetric(
          horizontal: 20,
        );

  static const pageRightOnly = EdgeInsets.only(right: 200);
}





// bir mobil uygulamada sağdan ve soldan boşluklar(paddingler) hep aynı boyutta olmalıdır.