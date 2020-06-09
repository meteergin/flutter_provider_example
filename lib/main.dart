import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/providers/counter_provider.dart';
import 'package:provider_test/widgets/click_counter_widget.dart';
import 'package:provider_test/widgets/counter_button_widget.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: HomePage(),
      ),
      create: (context) => CounterProvider(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Example'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ClickCounterWidget(),
          CounterButtonWidget()
        ],
      ),
    );
  }
}
