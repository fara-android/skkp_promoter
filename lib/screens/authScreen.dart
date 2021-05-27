import 'package:flutter/material.dart';
import 'package:ssp_prom/customs/colors.dart';

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
            children: [
              SizedBox(
                height: 123,
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
                height: 69.08,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10)),
                  ),
                  hintText: "Номер телефона",
                  hintStyle: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(10)),
                  ),
                  hintText: "Пароль",
                  hintStyle: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 48),
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Войти",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ),
              ),
              SizedBox(height: 48),
              Container(
                padding: EdgeInsets.only(left: 56, right: 56),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Text(
                        "Русский",
                        style: TextStyle(fontSize: 16, color: Colors.green),
                      ),
                    ),
                    InkWell(
                      child: Text(
                        "Кыргызча",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    )
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
