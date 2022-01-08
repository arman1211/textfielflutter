import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'screens/secondpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('title'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Text('Hello Doctors!'),
              SizedBox(
                height: 35,
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 32, left: 16, right: 16, bottom: 8),
              child: ListView(
                children: [
                  Container(
                    height: 150,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 150,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(32),
                                      bottomRight: Radius.circular(32),
                                    ),
                                    child: Image.network(
                                      'https://i2.wp.com/dhakacity.com.bd/wp-content/uploads/2021/12/patenga-sea-beach-picture.jpg?w=1000&ssl=1',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text('Bangladesh'),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 150,
                            color: Colors.green,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight: Radius.circular(50)), color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

/*class SignUpPage extends StatefulWidget {
  _State createState() => _State();
}//

class _State extends State<SignUpPage> {
  var nameCon = TextEditingController();
  var emailCon = TextEditingController();

  var passCon = TextEditingController();

  var messageCon = TextEditingController();
  String data = '';
  String selectedData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Switch(
                  value: _light, 
                  onChanged: (toggle){
                    setState(() {
                      _light = toggle;
                    });
                  })
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
            Text('Select Your Gender'),
            RadioListTile(
              title: Text('Male'),
              value: 'Male',
              groupValue: selectedData,
              onChanged: (value) {
                setState(() {
                  selectedData = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text('Female'),
              value: 'Female',
              groupValue: selectedData,
              onChanged: (value) {
                setState(() {
                  selectedData = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text('Others'),
              value: 'Others',
              groupValue: selectedData,
              onChanged: (value) {
                setState(() {
                  selectedData = value.toString();
                });
              },
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
                    setState(() {
                      data = selectedData + '\n' + nameCon.text + "\n" + emailCon.text + passCon.text + messageCon.text;
                    });
                  }
                },
                child: Text('Submit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
*/
