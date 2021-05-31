import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

import 'package:ssp_prom/screens/authScreen.dart';
import 'package:ssp_prom/screens/bottomNavScreens/bottomNavBar.dart';

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
    openApp();
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
                        offset: Offset(5, 7), 
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
  Future openApp()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    Future.delayed(Duration(seconds: 2), () {
       print("object2");
      
        print(pref.containsKey("login"));
        if(pref.containsKey("login")){
          
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BottomNavBar()));
        }
        else{
          Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => AuthScreen()));
        }
      
      
    });
  }
}
