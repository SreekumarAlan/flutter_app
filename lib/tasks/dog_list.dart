import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Basic List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('German Shepherd'),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text('Bulldog'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Golden Retriever'),
            ),
          ],
        ),
      ),
    );
  }
}