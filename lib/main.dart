import 'package:flutter/material.dart';
import 'package:sql_flutter/view/home.dart';

void main() {
  //stl
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}
