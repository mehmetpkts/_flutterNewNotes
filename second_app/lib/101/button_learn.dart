import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Button'),
      ),
      body: Column(
        children: [
          TextButton(
            child: const Text('tıkla'),
            onPressed: () {},
          ),

          ElevatedButton(
              onPressed: () {},
              child: const Text(
                  'Tıkla 2')), // Text buttondan farkı arkaplan rengi falan vermek istersek bu buttonu kullanarak yapabiliriz.

          IconButton(
              onPressed: () {},
              icon: const Icon(
                  Icons.abc_rounded)), // İcon ifadelerinde kullanılan buton.

          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ), //  Bu da icon buton'a benzer.

          OutlinedButton(
              onPressed: () {},
              child: const Text(
                  'tıkla 3')), // border ve border-radius'lu bir alan verir butona.

          // eğer yazdığımız bir şeyi button yapmak istersek (özelliksi button ) :

          InkWell(
            child: const Text('tıkla 4'),
            onTap: () {},
          ), // onTap ile Text'i tıklanabilir bir yapıya çevirmiş olduk.

          // Eğer tıklanamaz bir button yapmak istersek şunu yaparız : onPressed: null

          const OutlinedButton(
            onPressed: null,
            child: Icon(Icons.abc_rounded),
          ),

          // Text ve butonu özelleştirme :

          TextButton(
            onPressed: () {
              // sunucuya istek at
              // sayfanın rengini değiştir vs...     fonksiyonel yapılabilecek her şey
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(50)),
            child: Text('Mehmet Pektas',
                style: Theme.of(context).textTheme.labelSmall),
          ),

          // eğer icon ile label'ı aynı anda kullanmak istiyorsak örneğin şöyle yapmalıyız :

          OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.abc),
              label: const Text('tıkla')),

          Container(
            height: 200,
            color: Colors.white,
          ),

          const SizedBox(height: 10,),

          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10 , bottom: 10, right: 40,left: 40),
              child: Text(
                'Place Bid', style: Theme.of(context).textTheme.headlineMedium,),
            ),
          ),
        ],
      ),
    );
  }
}
