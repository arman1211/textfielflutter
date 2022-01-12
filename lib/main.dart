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
            child: Column(
              children: [
                Row(
                  children: [
                    for (var i = 0; i < 4; i++)
                      Icon(
                        Icons.star_border,
                        color: Colors.yellow,
                      ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'Price',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    )
                  ],
                )
              ],
            ),
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
