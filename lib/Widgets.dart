import 'package:flutter/material.dart';

//-----------Appbar-------------------------//
final topbar = AppBar(
  leading: TextButton.icon(
    onPressed: () {},
    icon: Icon(
      Icons.arrow_back_ios,
      color: Colors.black,
    ),
    label: Text(
      "Back",
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
    ),
  ),
  leadingWidth: 80,
  // title: Text("back"),
  elevation: 0,
  backgroundColor: Colors.transparent,
);
//-------------------------------------------//
//-----------------main head-------------------//
TextStyle mainhead() =>
    TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30);
//---------------------------------------------//
Widget card(dynamic img, dynamic btn) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 200,
                  width: 140,
                  decoration: BoxDecoration(image: DecorationImage(image: img)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "Green coast Houses",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "2120 palmetto way, st\nGeorge i  sland",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.black, shape: BoxShape.circle),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Chris Morgan",
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                              ),
                              Text("10 min ago",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [Icon(Icons.bed), Text("3 Bed")],
                ),
                Column(
                  children: [Icon(Icons.bathtub_outlined), Text("3 Bath")],
                ),
                Column(
                  children: [
                    Icon(Icons.local_parking_outlined),
                    Text("Parking")
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.scanner_sharp,
                      size: 35,
                    ),
                    Text(
                      "2000 Sq.mt",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Price"),
                    Text(
                      "\$4,500,000",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.comment,
                      color: Colors.red,
                    ),
                    btn
                  ],
                )
              ],
            )
          ],
        ),
      ),
    ),
  );
}
