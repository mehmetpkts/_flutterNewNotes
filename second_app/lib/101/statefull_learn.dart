import 'package:flutter/material.dart';
import 'package:second_app/core/hello_number.dart';
import 'package:second_app/product/language/language_items.dart';

class StatefullLearnWidget extends StatefulWidget {
  // bu kısım statleessWidget gibi çalışırken alttaraftaki yaptığımız widget hayat'ı veren kısımdır.
  const StatefullLearnWidget({super.key});

  @override
  State<StatefullLearnWidget> createState() => _StatefullLearnWidgetState();
}

class _StatefullLearnWidgetState extends State<StatefullLearnWidget> {
  // State'yi hayat olarak adalndırabiliriz , çünkü projemize hayat verir.

  int _countValue = 0;                    

  void _updateCounter(bool isIncrement) {
    if (isIncrement){
    _countValue = _countValue + 1;
    }
    else{
      _countValue = _countValue -1;
    }
    setState(() {
                                  // buradaki fonksiyonlarda setState((){}) içinde yazmamımızın amacı değişkenlik özelliği kazandirabilmemizdir , Çünkü build methodunu tekrardan tetikler.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(LanguageItems.welcomeTitle),),
      body: Column(
        children: [
          Center(child: Text("$_countValue" , style: Theme.of(context).textTheme.headlineLarge,)),
          const Placeholder(),
          const HelloNumberWidget()   // En önemli noktamız burasıdır çünkü böyle yaptığımızda herhangi bir parametre tekrardan çağırılmaz ve ana sayfamızda tekrar tekrar çağırarak sayfamızın performansını düşürmez. Başka sayfa oluşturup kodumuzu da onun içine alırız ve daha iyi olur.
                                      // başka bir component ana component'i etkilememeli.
        
        ],
      ), // Counter yapıcaz.
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min, // aynı oranda sıkıştırma işlemini yapar
        children: [
          _incrementMethod(),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: _deincrementMethod(),
          ),
        ],
      ),
    );
  }

  FloatingActionButton _deincrementMethod() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(false);
      },
      child: const Icon(Icons.remove),
    );
  }

  FloatingActionButton _incrementMethod() {
    return FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: const Icon(Icons.add),
    );
  }
}
