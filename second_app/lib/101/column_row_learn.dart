import 'package:flutter/material.dart';

class ColumnRowWidget extends StatelessWidget {
  const ColumnRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        // column altalta yapar
        children: [
          // Expanded(child: FlutterLogo()),
          // Expanded(child: FlutterLogo()), // burada 4 tane bundan olduğu için ekranı her biri için %25lik alan kaplayacak şeklinde yerleşrtir anlamına gelir.
          // Expanded(child: FlutterLogo()), // Expanded widgeti bu işe yarar. Ve responsive vir yapı oluşturmamızı sağlar.
          // Expanded(child: FlutterLogo()), // Expanded widgetini sadece row ve column'larda kullanabiliriz.

          // column ve row'larda flex yapısı

          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                      flex: 10,
                      child: Container(
                        color: Colors.red,
                      )),
                  Expanded(
                      flex: 20,
                      child: Container(
                        color: Colors.black,
                      )),
                  Expanded(
                      flex: 30,
                      child: Container(
                        color: Colors.purple,
                      )),
                ],
              )),

          const Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround, // sağdan-soldan(yukarıdan-aşağıdan- ana özelliği neyse 'row ise yatay - column ise dikey') eşit boşluklar verebilmemizi sağlayan bir propery'dir.
            crossAxisAlignment: CrossAxisAlignment.center, // yukarıdaki row olduğundan sağ-sol işlemini gerçekleştirirken bu ise yukarı-aşağı işlemini gerçekleştirir.
            // mainAxisSize: MainAxisSize.max,   // normalde belirtmesekte default ifade bu şekildedir. Ama biz padding falan vereceksek min ifadesini kullanmamız gerekir.
            children: [
              Text('a1'),
              Text('a2'),
              Text('a3'),
            ],
          )),

          // Expanded(flex: 2 ,child: Container(color: Colors.yellow,)),
          // Expanded(flex: 2 ,child: Container(color: Colors.blue,)),
          // Expanded(flex: 2 ,child: Container(color: Colors.green,)),

          // const Expanded(child: FlutterLogo()),
          // // eğer biz buradaki boşluk aynı kalsın istersek alttaki Flutter logo sileriz ve Spacer kullanarak işlemimize devam ederiz
          // // const Expanded(child: FlutterLogo()),
          // const Spacer(flex: 2,),   // gördüğümüz gibi yukarıdaki kod yerine bunu kullandığımızda ortadaki FlutterLogo ifadesini kaldırıp boşluk koymuş oldu.
          // const Expanded(child: FlutterLogo()),

          // burada flex yapısı bize 4+2+2+2 = 10 yapar ve 4 olarak yazılan yer mantıken %40 alan kapladığını diğer 2 olanların ise %20 alan kapladığını görmüş oluruz.

           const SizedBox(
            height: ProjectContainerSized.containerSized,
            child: Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child: Text('data' ,textAlign: TextAlign.center,)),
                Expanded(child: Text('data' ,textAlign: TextAlign.center,)),
                Expanded(child: Text('data' ,textAlign: TextAlign.center,)),
                Expanded(child: Text('data' ,textAlign: TextAlign.center,)),
              ],
            ),
          ) // eğer bir yerde expanded kullandıysak ve sonrasında herhangi bir container yapısı kullandıysak , container yapısına verdiğimiz height(width) özelliğini alırken expanded ise kalan alanı kendi içerisinde oranlayarak yerleşir.
        ],
      ),
    );
  }
}

class ProjectContainerSized {
  static const double containerSized = 200;
}
