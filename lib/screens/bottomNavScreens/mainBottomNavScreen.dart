import 'package:flutter/material.dart';

class MainBottomNavScreen extends StatefulWidget {
  MainBottomNavScreen({Key key}) : super(key: key);

  @override
  _MainBottomNavScreenState createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 80, right: 17, bottom: 0, left: 17),
          color: Colors.white, // поменять на res color (mainBackGroundColor)!
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                      ),
                      child: Image.asset("assets/images/sim.png"),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "СКПП\nПРОМОУТЕР",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ), //поменять на res(appName)!!!
                    SizedBox(
                      width: 46,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 75),
                      alignment: Alignment.centerRight,
                      child: Text(
                        "ПРОФИЛЬ", //  Скорее всего придеться ставить имендж с фигмы
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 44,
              ),
              Container(
                child: Row(
                  children: [
                    Text("Продажа SIM Карт "),
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
