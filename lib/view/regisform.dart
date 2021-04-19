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

          ),
    );
  }
}
