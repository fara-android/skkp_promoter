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
  createConnectionTarifPopUp(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              "Подключение тарифа",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.green),
            ),
            content: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Подтвердите правильность выбранного тарифа и номера"),
                  SizedBox(),
                ],
              ),
            ),
            actions: <Widget>[
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "ОТМЕНА",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              color: Colors.black),
                        ),
                        padding: EdgeInsets.only(right: 32, bottom: 0),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.only(right: 18, bottom: 0),
                        child: Text("ПОТВЕРДИТЬ",
                            style:
                                TextStyle(fontSize: 14, color: Colors.green)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }

  TarrifList list = new TarrifList();
  @override
  Widget build(BuildContext context) {
    double mediaQ = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: mainBackGroundColor,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
                height: mediaQ / 50,
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
                height: mediaQ / 23,
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    createContainerDetail(
                        'assets/images/payment.png',
                        list.listOfTarrifs[widget.index].price.toString(),
                        "с/нед."),
                    createContainerDetail(
                        'assets/images/phone.png',
                        list.listOfTarrifs[widget.index].minutesToOtherOper
                            .toString(),
                        "мин/нед."),
                  ],
                ),
              ),
              SizedBox(
                height: mediaQ / 50,
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    createContainerDetail(
                        'assets/images/internet.png',
                        list.listOfTarrifs[widget.index].gb.toString(),
                        "ГБ/нед."),
                    createContainerDetail(
                        'assets/images/call_in1.png',
                        list.listOfTarrifs[widget.index].insidemMega.toString(),
                        "мин/нед"),
                  ],
                ),
              ),
              SizedBox(
                height: mediaQ / 50,
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    createContainerDetail(
                        'assets/images/Sms1.png',
                        list.listOfTarrifs[widget.index].sms.toString(),
                        "нед."),
                  ],
                ),
              ),
              SizedBox(
                height: mediaQ / 23,
              ),
              Container(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Text(
                  tariffDefinition,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(
                height: mediaQ / 8,
              ),
              InkWell(
                onTap: () {
                  createConnectionTarifPopUp(context);
                },
                child: Container(
                  padding: EdgeInsets.only(right: 16, left: 16),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green),
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(16),
                    child: Text(
                      connectTarifText.toUpperCase(),
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: mediaQ / 50,
              ),
              Text(tarifConnectCallText),
            ],
          ),
        ),
      ),
    );
  }

  Widget createContainerDetail(String images, String numText, String period) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.35,
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 4,
          offset: Offset(0, 3),
        ),
      ], borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            images,
            height: 30,
            width: 30,
          ),
          Text(
            numText,
            style: TextStyle(
                color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            period,
          )
        ],
      ),
    );
  }
}
