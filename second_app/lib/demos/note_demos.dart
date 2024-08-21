import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:second_app/101/image_learn.dart';

class NoteDemosView extends StatelessWidget {
  const NoteDemosView({super.key});
  final _titleOne = 'Create youre first note!';
  final _titleTwo = 'Yeni notlar yazın lütfen';
  final _buttonText = 'Create a note';
  final _importNote = 'Import Notes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(systemOverlayStyle: SystemUiOverlayStyle.light,),
      body: Padding(
        padding: PaddingClass.horizontalPadding,
        child: Column(
          children: [
            PngImg(
              name: NewFoto2.fotoNew3,
            ),
            _TextWidgetOne(titleOne: _titleOne),
            Padding(
              padding: PaddingClass.verticalPadding,
              child: _LabelMadiumText(
                textAlign: TextAlign.center,
                titleTwo: _titleTwo * 6,
              ), // başkası isterse TextAlign.right vs... yaparak değiştirme özelliğini kazandırmış olduk.
            ),
            const Spacer(),
            Elevated(context),

            TextButton(onPressed: () {
              
            }, child: Text(_importNote, style: const TextStyle(color:  Colors.black,),)),

            const SizedBox(height: ButtonHeight.buttonHeightSize,),
          ],
        ),
      ),
    );
  }

  ElevatedButton Elevated(BuildContext context) {
    return ElevatedButton(
            onPressed: () {},
            child: SizedBox(
              height: ButtonHeight.buttonHeightSize,
              child: Center(
                child: Text(
                  _buttonText,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ),
          );
  }
}

// center text widget
class _LabelMadiumText extends StatelessWidget {
  const _LabelMadiumText(
      {super.key, this.textAlign = TextAlign.center, required this.titleTwo});
  final TextAlign textAlign;
  final String titleTwo;
  @override
  Widget build(BuildContext context) {
    return Text(
      titleTwo,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .labelMedium
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _TextWidgetOne extends StatelessWidget {
  const _TextWidgetOne({
    super.key,
    required this.titleOne,
  });
  final String titleOne;

  @override
  Widget build(BuildContext context) {
    return Text(
      titleOne,
      style: Theme.of(context)
          .textTheme
          .bodyLarge
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingClass {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeight {
  static const double buttonHeightSize = 50;
}
