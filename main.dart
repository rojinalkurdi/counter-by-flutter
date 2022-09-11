import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: no_logic_in_create_state
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int counter = 0;
  void increamentcounter() {
    setState(() {
      counter += 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("The AppBar Title"),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
            Text('the number of counter'),
            Text('$counter'),
            ]
          )
        ),

      floatingActionButton: FloatingActionButton(
            onPressed: increamentcounter,
             child: Icon(Icons.hearing_sharp),
        ),
      ),
    );
  }
}
