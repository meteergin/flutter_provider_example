import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/providers/counter_provider.dart';

class CounterButtonWidget extends StatefulWidget {
  @override
  _CounterButtonWidgetState createState() => _CounterButtonWidgetState();
}

class _CounterButtonWidgetState extends State<CounterButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _buttonPressed,
      icon: Icon(Icons.add),
    );
  }

  void _buttonPressed() {
    Provider.of<CounterProvider>(context, listen: false).add();
  }
}
