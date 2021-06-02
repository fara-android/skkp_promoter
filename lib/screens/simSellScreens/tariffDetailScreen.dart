import 'package:flutter/material.dart';
import 'package:ssp_prom/customs/colors.dart';
import 'package:ssp_prom/customs/strings.dart';

class TarifDetailScreen extends StatefulWidget {
  TarifDetailScreen({Key key}) : super(key: key);

  @override
  _TarifDetailScreenState createState() => _TarifDetailScreenState();
}

class _TarifDetailScreenState extends State<TarifDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 60, right: 0, left: 28, bottom: 0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    child: Text(
                      "996555125487",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),

                  // numActiveText
                  Container(
                    padding: EdgeInsets.only(left: 27),
                    child: Text(
                      "НОМЕР АКТИВЕНЫЙ",
                      style: TextStyle(color: Colors.green, fontSize: 12),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                padding: EdgeInsets.only(right: 140),
                child: Text(
                  "Супер выгодный 85",
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
    );
  }
}
