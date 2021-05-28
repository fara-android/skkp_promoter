import 'package:flutter/material.dart';

class MainBottomNavScreen extends StatefulWidget {
  MainBottomNavScreen({Key key}) : super(key: key);

  @override
  _MainBottomNavScreenState createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Main Screen",),),);
  }
}