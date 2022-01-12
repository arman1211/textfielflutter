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
          customContainer('Dhaka City', 'Dhaka', 700, 5),
          customContainer('CTG City', 'CTG', 500, 4),
        ],
      ),
    );
  }
}
