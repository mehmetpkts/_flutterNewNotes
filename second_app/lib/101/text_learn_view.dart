import 'package:flutter/material.dart'; // impM yazmamız yeterlidir.

class TextLearnView extends StatelessWidget {
  // StatelessWidget bizim UI yapabilmemizi sağlar.
  TextLearnView({super.key});
  final String name = 'mehmet';
  final ProjectKeys keys = ProjectKeys();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text(
            ('Welcome $name ${name.length} '),
            maxLines: 2,
            overflow: TextOverflow
                .ellipsis, // overflow: TextOverflow.ellipsis uzun texler için 3 nokta koyar.
            textAlign: TextAlign.center,
            style: const TextStyle(
              wordSpacing: 2,
              letterSpacing: 2,
              color: Colors.lime,
              fontSize: 24,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,
            ),
          ),

          Text(
            ('Welcome $name ${name.length} '),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: ProjectStyles.welcomeStyle,
          ),

          Text(
            ('Welcome $name ${name.length} '),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.black),   // sistemde kayıtlı onan text değerlerini verebilmemize yarar.
          ),

          Text(
            ('Welcome $name ${name.length} '),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: ProjectColors.welcomeColor),   // sistemde kayıtlı onan text değerlerini verebilmemize yarar.
          ),

          Text(keys.welcome),

          Text(keys.end),

        ],
      )),
    );
  }
}


// Text stle için yeni bir class oluşturma.Birçok yerde kullanmamıza yarar ama pek kullanmaya gerek yoktur.Çok doğru değildir.

class ProjectStyles{
  static TextStyle welcomeStyle = const TextStyle(
              wordSpacing: 2,
              letterSpacing: 2,
              color: Colors.lime,
              fontSize: 24,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
              decoration: TextDecoration.underline,);
}

// mesela her yerde aynı color kullanıryorsak şöyle yaparak işi pratikleştirebiliriz :

class ProjectColors{
  static Color welcomeColor = Colors.red;
}


// Vereceğimiz text'leri de bir class'da toplamak doğrudur. O yüzden şöyle yapabiliriz :

class ProjectKeys{
  final String welcome = 'Merhaba';
  final String end = "Görüşürüz";
}