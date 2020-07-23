import 'package:firstapp/views/home_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(FirstFlutterApp());

class FirstFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "First Learning Application", home: createHomeWidget());
  }
}
