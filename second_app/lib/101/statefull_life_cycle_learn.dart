import 'package:flutter/material.dart';


class StatefullLifeCycleLearnWidget extends StatefulWidget {
  const StatefullLifeCycleLearnWidget({super.key, required this.message});
  final String message;

  @override
  State<StatefullLifeCycleLearnWidget> createState() => _StatefullLifeCycleLearnWidgetState();
}

class _StatefullLifeCycleLearnWidgetState extends State<StatefullLifeCycleLearnWidget> {
  // initState bitmeden Build çağırılmaz. initState'den sonra ekran çizilir.
  String _message = "";
  late final bool _isEven;
  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isEven = widget.message.length.isEven;
    _ComputeMethod();
  }

  void _ComputeMethod() {
    if(_isEven){
      _message += " çift";
    }
    else{
      _message += " tek";
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isEven ? TextButton(onPressed: () {},child: Text(_message),) : ElevatedButton(onPressed: () {}, child: Text(_message)),
      );
  }
}