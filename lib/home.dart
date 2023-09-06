import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyText(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyText extends StatefulWidget {
  const MyText({super.key});

  @override
  State<MyText> createState() => _MyTextState();
}

class _MyTextState extends State<MyText> {
  int count = 0;

  void _increment() {
    setState(() {
      count++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Welcome to Flutter"),
      ),
      body: Center(
          child: Text(
        "You clicked $count times",
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
