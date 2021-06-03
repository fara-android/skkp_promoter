import 'package:flutter/material.dart';
import 'package:ssp_prom/customs/strings.dart';
import 'package:ssp_prom/screens/bottomNavScreens/bottomNavBar.dart';
import 'package:ssp_prom/screens/simSellScreens/tariffSelectionScreen.dart';

class TariffSuccesConectedScreen extends StatefulWidget {
  TariffSuccesConectedScreen({Key key}) : super(key: key);

  @override
  _TariffSuccesConectedScreenState createState() =>
      _TariffSuccesConectedScreenState();
}

class _TariffSuccesConectedScreenState
    extends State<TariffSuccesConectedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TariffSelectionScreen(
                                      getNumText: "",
                                    )));
                      })),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "assets/images/vectorOk.png",
                      width: 78,
                      height: 58,
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Text(
                    "Тариф усешно подключен",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 24),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TariffSelectionScreen(
                                getNumText: "",
                              )));
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
                      continueText.toUpperCase(),
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
