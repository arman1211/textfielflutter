import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/customContainer.dart';

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
          customContainer('https://www.hospitalitynet.org/picture/xxl_153110032.jpg?t=20200106170828', 'Dhaka City', 'Dhaka', 700, 5),
          customContainer('https://media.radissonhotels.net/image/radisson-blu-chattogram-bay-view/exteriorview/16256-116439-f64873197_3xl.jpg', 'CTG City', 'CTG', 500, 4),
        ],
      ),
    );
  }
}
