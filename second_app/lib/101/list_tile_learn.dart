import 'package:flutter/material.dart';
import 'package:second_app/core/random_image.dart';

class ListTileLearnWidget extends StatelessWidget {
  const ListTileLearnWidget({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body:  Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(title: const RandomImageWidget(),
              dense: true, // component'i olabildiğince sıkıştırmayı sağlar yani kendisinden gelen padding veya margin gibi şeyleri sıfırlar
              onTap: () {},
              subtitle: const Text('How to learn flutter in dart?'),
              leading: const Icon(Icons.money),   // eğer olurda iconumuzun yerini beğenmzesek conrainer kullanarak çözmemiz gerekir , height , width , Alignment vs... kullanılarak işlemimizi gerçekleştirmiş oluruz.
              trailing: const Icon(Icons.chevron_right),),
            ),
          ),
        )
      ],),
    );
  }
}