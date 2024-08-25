import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_app/101/statefull_life_cycle_learn.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(         // buradan da anlaşılacağı üzerine bizim iki tane ana yapımız vardır. MaterialApp ve CupertinoApp . MaterialApp daha çok android yapıları için kullanılırken CupertinoApp dağa çok ios için kullanılır.
    //return CupertinoApp()     // MaterialApp projede birkere kullanılır , daha fazla kullanılırsa projedeki routing'ler bozulur. 
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
        listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),    // ListTile'daki bütün padding ve marginleri sıfırlar.
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          systemOverlayStyle:SystemUiOverlayStyle.light ,
          // backgroundColor: Colors.blueGrey, , 
          elevation: 0,
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const StatefullLifeCycleLearnWidget(message: "Meehmetttt"),
    );
  }
}
