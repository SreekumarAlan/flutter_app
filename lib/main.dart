import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("App bar title"),
      ),
      body: Center(child: Text(
          "Welcome to flutter",
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.orange
        ),
      )),
    ),
    debugShowCheckedModeBanner: false,
  ));
}
