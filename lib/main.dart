import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: HomePage()));
}

class HomePage extends StatelessWidget {
  String dollarsign = r"$";
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    for (var i = 0; i < 4; i++)
                      Icon(
                        Icons.star_border,
                        color: Colors.yellow,
                      ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      '1200' + dollarsign,
                      style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.w800),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 70,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Text(
                              'Hotel Name',
                              style: TextStyle(fontSize: 25, color: Colors.yellow, fontWeight: FontWeight.w800),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Location',
                              style: TextStyle(fontSize: 20, color: Colors.yellow, fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
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
