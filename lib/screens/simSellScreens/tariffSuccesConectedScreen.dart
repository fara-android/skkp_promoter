import 'package:flutter/material.dart';

class TariffSuccesConectedScreen extends StatefulWidget {
  TariffSuccesConectedScreen({Key key}) : super(key: key);

  @override
  _TariffSuccesConectedScreenState createState() =>
      _TariffSuccesConectedScreenState();
}

class _TariffSuccesConectedScreenState
    extends State<TariffSuccesConectedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [IconButton(icon: Icon(Icons.close), onPressed: () {})],
          ),
        ),
      ),
    );
  }
}
