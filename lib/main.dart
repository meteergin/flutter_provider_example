import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/providers/counter_provider.dart';
import 'package:provider_test/widgets/click_counter_widget.dart';
import 'package:provider_test/widgets/counter_button_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: HomePage(),
      ),
      providers: [
        ChangeNotifierProvider<CounterProvider>(
          create: (_) => CounterProvider(),
        ),
        StreamProvider<int>(
          initialData: 0,
          create: (BuildContext context) =>
              Stream.periodic(Duration(milliseconds: 1000), (i) => i),
        ),
      ],
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
        body: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ClickCounterWidget(),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CounterButtonWidget(),
                    CounterButtonWidget(),
                  ],
                ),
                Text('${Provider.of<int>(context)}', style: TextStyle(fontSize: 20.0),),
              ],
            )
          ],
        ));
  }
}
