import 'package:example/counter_store.dart';
import 'package:flutter/material.dart';
import 'package:mobx_observer_widgets/material/material.dart';

Counter counter = new Counter();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "ObserverWidgets example"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "You have pushed the button this many times:",
            ),
            Text("ObserverText"),
            ObserverText(
              (context) => "${counter.counter}",
              style: Theme.of(context).textTheme.display1,
            ),
            Text("ObserverText.rich"),
            ObserverText.rich(
              (context) => TextSpan(text: "${counter.counter}"),
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter.increment(),
        tooltip: "Increment",
        child: Icon(Icons.add),
      ),
    );
  }
}
