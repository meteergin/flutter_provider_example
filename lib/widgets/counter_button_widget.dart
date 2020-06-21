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
    return Column(
      children: <Widget>[
        IconButton(
          onPressed: _addButtonPressed,
          icon: Icon(Icons.add),
          padding: EdgeInsets.all(30.0),
        ),
        IconButton(
          onPressed: _removeButtonPressed,
          icon: Icon(Icons.remove),
          padding: EdgeInsets.all(30.0),
        ),
      ],
    );
  }

  void _addButtonPressed() {
    Provider.of<CounterProvider>(context, listen: false).increment();
  }

  void _removeButtonPressed() {
    Provider.of<CounterProvider>(context, listen: false).decrement();
  }
}
