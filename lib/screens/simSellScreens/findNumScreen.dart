import 'package:flutter/material.dart';
import 'package:ssp_prom/customs/strings.dart';

class FindNumScreen extends StatefulWidget {
  FindNumScreen({Key key}) : super(key: key);

  @override
  _FindNumScreenState createState() => _FindNumScreenState();
}

class _FindNumScreenState extends State<FindNumScreen> {
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
                height: 80,
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
              TextField(
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
              Container(
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
              SizedBox(
                height: 39,
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
