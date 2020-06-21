import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/providers/counter_provider.dart';

class ClickCounterWidget extends StatefulWidget {

  @override
  _ClickCounterWidgetState createState() => _ClickCounterWidgetState();
}

class _ClickCounterWidgetState extends State<ClickCounterWidget> {

  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, counterProvider, child) => Text('${counterProvider.counter}', style: TextStyle(fontSize: 50.0),),
    );
  }
}
