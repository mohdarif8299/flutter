import 'package:flutter/material.dart';
class Printers extends StatefulWidget {
  @override
  _PrintersState createState() => _PrintersState();
}

class _PrintersState extends State<Printers> {
  MediaQueryData data;
  List<String> printImg = [
    "images/shop/printer.png",
    "images/shop/lap2.png",
    "images/shop/printer.png",
    "images/shop/mouse.png",
    "images/shop/lap5.png",
    "images/shop/printer.png",
    "images/shop/lap.png",
    "images/shop/lap2.png",
    "images/shop/lap3.png",
    "images/shop/lap4.png",
    "images/shop/lap5.png",
    "images/shop/lap6.png"
  ];
  List<String> printNames = [
    "Epson L 550",
    "HP Laserjet V-4",
    "Epson L 440",
    "Laserk V-4",
    "HP Inkjet 13'",
    "HP Pavilion Dual Tone",
    "Dell Inspiron",
    "Toshiba T-1909",
    "VAIO V-4",
    "HP Elitebook 13'",
    "VAIO V-4",
    "HP Elitebook 13'"
  ];

  @override
  Widget build(BuildContext context) {
    data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Printers"),
        actions: <Widget>[
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.sort),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: GridView.count(
          shrinkWrap: true,
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          childAspectRatio: .8,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          children: List.generate(12, (index) {
            return InkWell(
              onTap: () {},
              child: Container(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                          right: index % 2 == 0
                              ? BorderSide(width: 0.2, color: Colors.black)
                              : BorderSide(width: 0.0, color: Colors.transparent),
                          bottom: BorderSide(width: 0.2, color: Colors.black)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          printImg[index],
                          height: data.size.width*.4,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          printNames[index],
                          style: TextStyle(color: Colors.black),
                        ), Padding(
                          padding:
                          const EdgeInsets.fromLTRB(
                              8.0, 10, 8, 5),
                          child: Text(
                            "Cell Phone Holder - Flexible....",
                            style:
                            TextStyle(fontSize: 12),
                          ),
                        ),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "₹ 169/- ",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors
                                      .red.shade800),
                            ),
                            Text(
                              " 60% off",
                              style: TextStyle(
                                  color: Colors
                                      .green.shade800),
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
            );
          })),
    );
  }
}
