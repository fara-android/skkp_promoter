import 'package:flutter/material.dart';
import 'package:ssp_prom/models/tariffList.dart';

class TariffSelectionScreen extends StatefulWidget {
  String getNumText;
  TariffSelectionScreen({Key key, this.getNumText}) : super(key: key);

  @override
  _TariffSelectionScreenState createState() => _TariffSelectionScreenState();
}

class _TariffSelectionScreenState extends State<TariffSelectionScreen> {
  TarrifList list = new TarrifList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
