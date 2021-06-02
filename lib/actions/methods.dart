import 'package:flutter/material.dart';
import 'package:ssp_prom/models/tariffList.dart';

Widget buildInfoContainer(String image, String numText, String period) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(16)),
    width: 110,
    padding: EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          image,
          width: 30,
          height: 30,
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Text("$numText ",
                style: TextStyle(
                    color: Colors.green, fontWeight: FontWeight.bold)),
            Text(period)
          ],
        ),
      ],
    ),
  );
}

Widget buildAllTarrifs(int index) {
  TarrifList list = new TarrifList();
  return Column(
    children: [
      Container(
        padding: EdgeInsets.only(right: 16,left: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              list.listOfTarrifs[index].tariffName,
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
           IconButton(icon:  Icon(Icons.arrow_forward_ios), onPressed: (){})
          ],
        ),
      ),
      SizedBox(
        height: 8,
      ),
      Container(
        padding: EdgeInsets.only(left: 16),
        height: 99,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8, ),
              child: buildInfoContainer("assets/images/payment.png",
                  list.listOfTarrifs[index].price.toString(), "с/мес"),
            ),
            SizedBox(width: 8),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: buildInfoContainer("assets/images/internet.png",
                  list.listOfTarrifs[index].gb.toString(), "ГБ/мес"),
            ),
            SizedBox(width: 8),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: buildInfoContainer(
                  "assets/images/phone.png",
                  list.listOfTarrifs[index].minutesToOtherOper.toString(),
                  "мин/мес"),
            ),
            SizedBox(width: 8),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: buildInfoContainer("assets/images/call_in1.png",
                  list.listOfTarrifs[index].insidemMega.toString(), "мин/мес"),
            ),
            SizedBox(width: 8),
            Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: buildInfoContainer("assets/images/Sms1.png",
                  list.listOfTarrifs[index].sms.toString(), "нед"),
            ),
            SizedBox(width: 20),
          ],
        ),
      ),
      SizedBox(height: 20),
      Container(height: 0.2,color:Colors.black,)
    ],
  );
}
