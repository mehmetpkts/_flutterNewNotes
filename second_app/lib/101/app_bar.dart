import 'package:flutter/material.dart';

class AppBarLearnView extends StatelessWidget {
  const AppBarLearnView({super.key});

  final _title =
      'Flutter Project'; // projelerimizde bu tarz text'lerimizi bir değişken içinde tutmak önemlidir.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.chevron_left),),    // sol taraftaki buton ikonu 
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.mark_email_read_rounded)),    // sağ taraftaki buton ikonu
          const Center(child: CircularProgressIndicator(),)
        ],
        actionsIconTheme: const IconThemeData(color: Colors.white, size: 40),
      ),
    );
  }
}
