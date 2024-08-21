import 'package:flutter/material.dart';

// eğer statik bir yapı oluşturacaksak ve data göstermiceksek StatelessWidget kullanırız.(Data işlemi yok)

class StatelessLearnView extends StatelessWidget {
  const StatelessLearnView({super.key});
  final String _title = 'New Project';
  @override
  Widget build(BuildContext context) {    // buradaki build metodu ile ekranlarımızı geliştirebiliriz.
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Column(
        children: [
          const TextWidget(text: 'Mehmet',),
          _emptyBox(),
          const TextWidget(text: 'Pektas',),
          _emptyBox(),
          const TextWidget(text: 'Pekmeh'),
          _emptyBox(),
          const _ContainerWidget(),
          _emptyBox(),         // _ContainerWidget bu şekilde başında _ ile oluşturduğuz yapıyı sadece biz burada kullanabiliriz.Bu dosyamızı başka bir yere import etsekte _ olan yapıyı başka bir yerde kullanamayız. (Sayfaya özel component)
        ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(height: 20,);
}

class _ContainerWidget extends StatelessWidget {   // Başka sayfadan okunabilmemesi için genelde _ ile statlessWidget oluşturulur. 
  const _ContainerWidget({
    super.key,
  });
                                                // buradaki yapı Container üstüne gelinip "ctrl" + "." yaptıktan sonra extract widget yapmamız yeterlidir. Bizim için hemen her şeyi ayarlar.
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.red),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text});    // required = gerekli 
                                                        //  birden fazla karmaşıklığı artmış yapılar kullanırsak 
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}