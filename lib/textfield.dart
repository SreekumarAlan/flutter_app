import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyForm(),
  ));
}

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(), hintText: 'Enter search term'),
          controller: myController,
        ),
        TextFormField(
          onChanged: (text){
            print('First text field: $text (${text.characters.length})');
          },
          decoration: InputDecoration(
              border: UnderlineInputBorder(), labelText: 'Enter user name'),
        ),
        ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(content: Text(myController.text));
                  });
            },
            child: Icon(Icons.text_fields))
      ],
    );
  }
}