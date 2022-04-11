import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.teal,
            title: const Center(
              child: Text(
                "Flutter Learning",
                style: TextStyle(fontSize: 40, color: Colors.black),
              ),
            )),
        body: const Center(
          child: Counter(),
        ),
      ),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late int counter;

  @override
  void initState() {
    counter = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          const Text(
            "Hello World !",
            style: TextStyle(fontSize: 50),
          ),
          Text(
            "Compteur : $counter",
            style: const TextStyle(fontSize: 50),
          ),
          FloatingActionButton(
            child: const Icon(Icons.add, color: Colors.white),
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            backgroundColor: Colors.teal,
          ),
        ],
      ),
    );
  }
}
