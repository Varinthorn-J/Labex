import 'package:flutter/material.dart';
import 'package:sql_flutter/view/regisform.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  double padding = 8;
  String welcome = "";

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //แก้ขอบชน
      appBar: AppBar(
        title: Text('หน้าจอหลักระบบลงทะเบียน'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Column(
            children: [
              Text(
                'ระบบลงทะเบียนวิชาเรียน ม.อ.',
                style: TextStyle(fontSize: 30),
              ),
              Text(
                'กรุณากรอก บัญชีผู้ใช้ เเละ รหัสผ่าน',
                style: TextStyle(fontSize: 20),
              ),
              Text("(" "สำหรับผู้ใช้ใหม่กรุณาลงทะเบียน" ")"),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(padding),
            child: TextField(
              controller: emailcontroller,
              decoration: InputDecoration(hintText: 'username'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(padding),
            child: TextField(
              controller: passwordcontroller,
              decoration: InputDecoration(hintText: 'Password'),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        welcome = "${emailcontroller.text.trim()}\n"
                            "${passwordcontroller.text.trim()}\n"; //trim ตัดช่องว่าง
                      });
                    },
                    child: Text('Login')),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => regisform(),
                        ),
                      );
                    },
                    child: Text('Register')),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => showdatetime(),
                        ),
                      );
                    },
                    child: Text(' Show The Current Time')),
              ),
            ],
          ),
          Text(welcome),
        ],
      ),
    );
  }
}

showdatetime() {}
