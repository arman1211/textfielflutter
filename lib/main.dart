import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://www.princehotels.com/wp-content/uploads/2019/04/aboutslider2-1.jpg',
                    ),
                    fit: BoxFit.cover,
                    scale: 2.0)),
          )
        ],
      ),
    );
  }
}
