import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ssp_prom/customs/colors.dart';
import 'package:ssp_prom/customs/strings.dart';
import 'package:ssp_prom/screens/simSellScreens/findNumScreen.dart';

class MainBottomNavScreen extends StatefulWidget {
  MainBottomNavScreen({Key key}) : super(key: key);

  @override
  _MainBottomNavScreenState createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackGroundColor,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 0, right: 17, bottom: 0, left: 17),
          child: Column(
            children: [
              SizedBox(height: 80),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
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
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        clearDataFromPrefs();
                      },
                      child: Text(
                        "ПРОФИЛЬ",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 48),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FindNumScreen()));
                },
                child: buildContainer("assets/images/sim_card.png",
                    simCardSellingText, Colors.white, green1),
              ),
              SizedBox(
                height: 24,
              ),
              buildContainer("assets/images/change.png", changeTariffText,
                  Colors.black, Colors.white),
              SizedBox(
                height: 24,
              ),
              buildContainer("assets/images/report.png", reportText,
                  Colors.black, Colors.white),
              SizedBox(
                height: 24,
              ),
              buildContainer("assets/images/reference_info.png",
                  referenceInfoText, Colors.black, Colors.white),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(
      String image, String title, Color textColor, Color containerColor) {
    return Container(
      height: 78,
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 78,
            height: 78,
          ),
          SizedBox(
            width: 6,
          ),
          Text(
            title,
            style: TextStyle(color: textColor, fontSize: 17),
          )
        ],
      ),
    );
  }

  void clearDataFromPrefs() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove("login");
    await pref.remove("password");
  }
}
