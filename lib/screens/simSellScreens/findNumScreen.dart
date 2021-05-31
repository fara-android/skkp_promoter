import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ssp_prom/customs/strings.dart';
import 'package:ssp_prom/screens/simSellScreens/tariffSelectionScreen.dart';

class FindNumScreen extends StatefulWidget {
  FindNumScreen({Key key}) : super(key: key);

  @override
  _FindNumScreenState createState() => _FindNumScreenState();
}

class _FindNumScreenState extends State<FindNumScreen> {
  TextEditingController numController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.only(top: 0, right: 22, left: 22, bottom: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  IconButton(
                      color: Colors.green,
                      icon: new Icon(
                        Icons.close,
                      ),
                      onPressed: () => Navigator.of(context).pop(null)),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    simCardSellingText,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(
                height: 42,
              ),
              Container(
                padding: EdgeInsets.only(left: 12),
                child: Text(
                  promptTextMSISDN,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 4),
              TextField(
                inputFormatters: [
                  new LengthLimitingTextInputFormatter(12)
                ],
                controller: numController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
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
              SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TariffSelectionScreen(
                                getNumText: numController.text,
                              )));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.green),
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(16),
                  child: Text(
                    searchNumber,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 39,
              ),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.qr_code_scanner_sharp,
                      color: Colors.green,
                    ),
                    SizedBox(width: 29),
                    Text(
                      scanQRText,
                      style: TextStyle(fontSize: 16),
                    ),
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
