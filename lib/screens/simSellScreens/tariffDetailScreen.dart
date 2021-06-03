import 'package:flutter/material.dart';
import 'package:ssp_prom/customs/colors.dart';
import 'package:ssp_prom/customs/strings.dart';
import 'package:ssp_prom/models/tariffList.dart';

class TarifDetailScreen extends StatefulWidget {
  String getNum;
  int index;
  TarifDetailScreen({Key key, this.getNum, this.index}) : super(key: key);

  @override
  _TarifDetailScreenState createState() => _TarifDetailScreenState();
}

class _TarifDetailScreenState extends State<TarifDetailScreen> {
  TarrifList list = new TarrifList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
              child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Colors.green),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Text(
                      widget.getNum,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 4),
                    Container(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(numActiveText,
                            style: TextStyle(color: Colors.green, fontSize: 12))),
                    SizedBox(width: 4)
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  padding: EdgeInsets.only(right: 140),
                  child: Text(
                    list.listOfTarrifs[widget.index].tariffName,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  children: [],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
