import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Header app bar"),
      ),
      body: Center(child: Text(
          "Welcom to flutter app",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
          color: Colors.orange
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: increment(),
        child: Text("click"),
      ),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

increment(){

}