import 'package:flutter/material.dart';

class IndicatorLearnWidget extends StatelessWidget {
  const IndicatorLearnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CenterCircualLoadingWidget()],
      ),
      body: 
      const LinearProgressIndicator(),
      // const CenterCircualLoadingWidget(),
    );
  }
}

class CenterCircualLoadingWidget extends StatelessWidget {
  const CenterCircualLoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator(strokeWidth: 10, // bize kalınlık sağlar
    value: 0.9, // tamamlanma yüzdesini gösterme gibi şeyleride gösterebiliriz.
    backgroundColor: Colors.red,  // arkaplan rengini değiştirmiş olduk.
    ));   // main dosyası içerisinde bütün sayfalardaki rengimizi "progressIndicatorTheme" ile vermiş olduk.
  }
}


// loading bar'lar bütün sayfalarada ortaktır.

// Giriş ekranları olsun , veya data ile kontrol işlemleri olsun mecburen loading bar'ları kullanmamız gerekir.