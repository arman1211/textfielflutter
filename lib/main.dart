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
          customContainer(),
          customContainer(),
          customContainer(),
          customContainer(),
        ],
      ),
    );
  }
}
