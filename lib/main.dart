import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SignUpPage(),
  ));
}

class SignUpPage extends StatelessWidget {
  var nameCon = TextEditingController();
  var emailCon = TextEditingController();

  var passCon = TextEditingController();

  var messageCon = TextEditingController();
  String data = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(data),
          Icon(
            Icons.emoji_emotions,
            size: 100,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: nameCon,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)), labelText: 'Full Name', hintText: 'Enter you full name..'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: emailCon,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
                  labelText: 'Email',
                  hintText: 'Enter you email address..',
                  suffix: Icon(
                    Icons.email,
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: passCon,
              textInputAction: TextInputAction.next,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)), labelText: 'Password', hintText: 'Password must be eight digit..', suffix: Icon(Icons.remove_red_eye_rounded)),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: messageCon,
              minLines: 4,
              maxLines: 7,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)), hintText: 'Whats on your mind'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.all(5),
            height: 40,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (nameCon.text.isEmpty || emailCon.text.isEmpty || passCon.text.isEmpty || messageCon.text.isEmpty) {
                  Fluttertoast.showToast(msg: "All Fields are required", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.CENTER, timeInSecForIosWeb: 1, backgroundColor: Colors.red, textColor: Colors.white, fontSize: 16.0);
                } else {
                  data = nameCon.text;
                }
              },
              child: Text('Submit'),
            ),
          )
        ],
      ),
    );
  }
}
