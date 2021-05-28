import 'package:flutter/material.dart';

class SettingsBottomNavScreen extends StatefulWidget {
  SettingsBottomNavScreen({Key key}) : super(key: key);

  @override
  _SettingsBottomNavScreenState createState() => _SettingsBottomNavScreenState();
}

class _SettingsBottomNavScreenState extends State<SettingsBottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(child: Text("Settings Screen")
    ));
  }
}