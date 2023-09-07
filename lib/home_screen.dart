import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: HomeScreen(),
));

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Hello World"),
          Text("Hello world"),

        ],
      ),
    );
  }

  Widget buildTitleSection(){
    return Container(
      padding: const EdgeInsets.all(32),

      child: Row(
        children: [
          Expanded(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text("lake compound",style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Text("switzerland",
                  style: TextStyle(
                      color: Colors.grey
                  ),
                )
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.red,),
          Text("41")
        ],
      ),
    );
  }

  Row buildButtonSection{
    
}
}
