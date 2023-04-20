import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            child: GestureDetector(
              onHorizontalDragStart: (DragStartDetails details) {
                print("Dragged"); //just tapped
                print(details);
                },
               onHorizontalDragUpdate: (DragUpdateDetails details) {
                   print("Updated"); //tapped and moved
                  print(details);
                },
              child: Container(
                alignment: Alignment.center,
                width: 280.0,
                height: 60.0,
                padding: const EdgeInsets.all(8.0),
                child: Text('Slide Me'),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color.fromARGB(255, 34, 130, 225),
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          tooltip: 'Next Page',
          child: Icon(Icons.arrow_circle_right),
        ));
  }
}
