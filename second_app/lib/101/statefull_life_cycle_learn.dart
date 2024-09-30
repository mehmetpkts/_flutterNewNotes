import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});
  final String message;

  @override
  State<StatefullLifeCycleLearn> createState() => _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd;
  @override // initState ---> bizim en bilinen lifeCyclemizdir.Bu yapı view'den önce işlenir.

  // Mesaj tekse yanına tek çiftse çift yaz.
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    computeName();
    print('c');    // initState colsol'da çalıştı.
  }

  @override
  void dispose() {      // bu ise , sayfa değiştiğinde diğer sayfayı öldürme işlemini yapar.
    super.dispose();
    _message = "";
  }

  @override
  void didChangeDependencies() {
    // buda initState gibi çalışır ve initState'den sonra çalışır.
    super.didChangeDependencies();
    print('a');   // didChangeDependencies colsolda çalıştı.
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('b');   // didUpdateWidget colsolda çalışmadı.
  }

  void computeName() {
    if (_isOdd) {
      _message += ' Çift';
    } else {
      _message += ' Tek';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
