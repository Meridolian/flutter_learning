import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int counter = 0 ;
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Center(
            child: Text(
              "Flutter Learning",
              style: TextStyle(
                fontSize: 40,
                color: Colors.black
              ),
            ),
          )
        ),
        body: Center(
          child: Column(
            children: [
              Text("Hello World !", style: TextStyle(fontSize: 50),),
              Text("Compteur : $counter", style: TextStyle(fontSize: 50),)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter++;
          },
          child: const Text(
            "+",
            style: TextStyle(
            color: Colors.black,
            fontSize: 35
            )
          ),
          backgroundColor: Colors.teal,
        ),
      ),
    );
  }
}