import 'package:flutter/material.dart';

// flutter bize yetersiz geldiği yerde biz artık custom widget kullanmamız gerekir.

class CustomWidgetLearn extends StatelessWidget {
  // with ile birlikte static yapısından kurtularak bir class yapısını kendi widget'imize dahil etmiş olduk
  const CustomWidgetLearn({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(width: MediaQuery.of(context).size.width,child: CustomFoodButton(title: 'Food',onPressed: (){},)),
            ),
            const SizedBox(height: 100,),
            CustomFoodButton(title: 'Food',onPressed: (){},),
          ],
        ),
      ),
    );
  }
}

mixin _ColorsUtility {
  // yukarıya with edebilmek için class yerine mixin yazmamız gerekir.
  final Color whiteColor = Colors.white;
  final Color redColor = Colors.red;
}

mixin _PaddingOne {
  final EdgeInsets normalPadding = const EdgeInsets.all(8.0);
  final EdgeInsets normal2xPadding = const EdgeInsets.all(16.0);
}


class CustomFoodButton extends StatelessWidget with _ColorsUtility , _PaddingOne{
  CustomFoodButton({super.key, required this.title, required this.onPressed});
    final String title;
    final void Function() onPressed;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: redColor,
            shape: const StadiumBorder(),
          ),
          onPressed: onPressed,
          child: Padding(
            padding: normal2xPadding,
            child: Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: whiteColor,fontWeight: FontWeight.bold),
            ),
          ),
        );
  }
}