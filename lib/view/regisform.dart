import 'package:flutter/material.dart';
import 'package:sql_flutter/view/Home.dart';

class regisform extends StatefulWidget {
  regisform({Key key}) : super(key: key);

  @override
  _regisformState createState() => _regisformState();
}

class _regisformState extends State<regisform> {
  double padding = 8;
  String welcome = "";
  TextEditingController firstnamecontroller = TextEditingController();
  TextEditingController lastnamecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //แก้ขอบชน
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Padding(
            padding: EdgeInsets.all(padding),
            child: TextField(
              controller: firstnamecontroller,
              decoration: InputDecoration(hintText: 'FirstName'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(padding),
            child: TextField(
              controller: lastnamecontroller,
              decoration: InputDecoration(hintText: 'LastName'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(padding),
            child: TextField(
              controller: addresscontroller,
              decoration: InputDecoration(hintText: 'Address'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(padding),
            child: TextField(
              controller: phonecontroller,
              decoration: InputDecoration(hintText: 'phone'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(padding),
            child: TextField(
              controller: emailcontroller,
              decoration: InputDecoration(hintText: 'Email'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(padding),
            child: TextField(
              controller: passwordcontroller,
              decoration: InputDecoration(hintText: 'Password'),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                );
              },
              child: Text('submit')),
          Text(welcome),
        ],
      ),
    );
  }
}
