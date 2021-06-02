import 'package:flutter/material.dart';
import 'package:ssp_prom/actions/methods.dart';
import 'package:ssp_prom/customs/colors.dart';
import 'package:ssp_prom/customs/strings.dart';
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
      backgroundColor: mainBackGroundColor,
      body: SafeArea(
              child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: Icon(Icons.close, color: Colors.green),
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                        Text(
                          widget.getNumText,
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 4),
                        Container(
                            padding: EdgeInsets.only(top: 6),
                            child: Text(numActiveText,
                                style:
                                    TextStyle(color: Colors.green, fontSize: 12))),
                        SizedBox(width: 4)
                      ],
                    ),
                    SizedBox(height: 24),
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Text("$currentTarrifText ",
                              style: TextStyle(fontSize: 16)),
                          Text(list.listOfTarrifs[0].tariffName,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 8, bottom: 8, left: 8),
                            child: buildInfoContainer("assets/images/payment.png",
                                list.listOfTarrifs[0].price.toString(), "с/мес"),
                          ),
                          SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child: buildInfoContainer("assets/images/internet.png",
                                list.listOfTarrifs[0].gb.toString(), "ГБ/мес"),
                          ),
                          SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child: buildInfoContainer(
                                "assets/images/phone.png",
                                list.listOfTarrifs[0].minutesToOtherOper.toString(),
                                "мин/мес"),
                          ),
                          SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child: buildInfoContainer(
                                "assets/images/call_in1.png",
                                list.listOfTarrifs[0].insidemMega.toString(),
                                "мин/мес"),
                          ),
                          SizedBox(width: 8),
                          Container(
                            padding: EdgeInsets.only(top: 8, bottom: 8),
                            child: buildInfoContainer("assets/images/Sms1.png",
                                list.listOfTarrifs[0].sms.toString(), "нед"),
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
               Container(
                  
                  width: MediaQuery.of(context).size.width,
                  color: mainBackGroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 19),
                      Container(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          availableText,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 28),
                      for(int i = 0;i <list.listOfTarrifs.length;i++)
                      buildAllTarrifs(i),
                    ],
                  ),
                ),
              
            ],
          ),
        ),
      ),
    );
  }

  
}
