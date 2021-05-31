import 'package:flutter/material.dart';
import 'dart:async';

import 'package:ssp_prom/screens/authScreen.dart';

import '../customs/colors.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => AuthScreen()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: mainBackGroundColor,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(
                height: 222,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 0,
                        blurRadius: 1,
                        offset: Offset(5, 7), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.asset(
                    "assets/images/sim.png",
                    width: 55,
                    height: 74,
                  ),),
                  SizedBox(height: 45),
                  Text("СКПП",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Color(0xff434343)),),
                  Text("ПРОМОУТЕР",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28,color: Color(0xff434343)),),
                  SizedBox(height: MediaQuery.of(context).size.height-475),
                  Image.asset("assets/images/logo_mega.png",width: 196),
            ],
          )),
    );
  }
}
