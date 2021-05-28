import 'package:flutter/material.dart';
import 'package:ssp_prom/customs/colors.dart';
import 'package:ssp_prom/customs/strings.dart';
import 'package:ssp_prom/screens/bottomNavScreens/bottomNavBar.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key key}) : super(key: key);

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 0, right: 28, left: 28, bottom: 0),
          color: mainBackGroundColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 124,
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "СКПП \nПРОМОУТЕР",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
              SizedBox(
                height: 0,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: promoGreenMain),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10)),
                  ),
                  border: OutlineInputBorder(
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10)),
                  ),
                  hintText: "Номер телефона",
                  hintStyle: TextStyle(fontSize: 16),
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: promoGreenMain),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10)),
                  ),
                  border: OutlineInputBorder(
                     borderSide: BorderSide(color: promoGreenMain),
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10)),
                  ),
                  hintText: "Пароль",
                  hintStyle: TextStyle(fontSize: 16),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNavBar()));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(16),
                  child: Text(
                    enter,
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
              SizedBox(height: 0),
              Container(
                padding: EdgeInsets.only(left: 56, right: 56),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Text(
                        russianLang,
                        style: TextStyle(fontSize: 16, color: Colors.green),
                      ),
                    ),
                    InkWell(
                      child: Text(
                        kyrgyzLang,
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8),
              Container(
                height: 0.1,
                color: Colors.grey,
                padding: EdgeInsets.only(right: 36, left: 36),
              ),
              Container(
                padding: EdgeInsets.only(right: 36, left: 36),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: RichText(
                  text: TextSpan(
                    text: ruleText1,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: ruleText2,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24)
            ],
          ),
        ),
      ),
    );
  }
}
