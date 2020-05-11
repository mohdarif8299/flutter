import 'package:flutter/material.dart';
import 'package:internship_hb/SellPhone/exactValue.dart';

class PriceView extends StatefulWidget {
  @override
  _PriceViewState createState() => _PriceViewState();
}

class _PriceViewState extends State<PriceView> {
  int borderColor = 0xff000000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Text("Your Device"),
          actions: <Widget>[],
        ),
        body: Column(children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.maxFinite,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "OnePlus 7 Pro",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      borderColor == 0xff000000
                          ? Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  "images/op7p.png",
                                  height: 100,
                                ),
                              ],
                            )
                          : Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  width: 30,
                                ),
                                Image.asset(
                                  "images/op7p.png",
                                  height: 100,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Estimated Price",
                                        style: TextStyle(
                                          fontSize: 12.5,
                                        )),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "₹ 35,000",
                                      style: TextStyle(
                                          fontSize: 28,
                                          color: Colors.red.shade800),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text("More than 500 devices sold!",
                                        style: TextStyle(
                                          fontSize: 12,
                                        )),
                                  ],
                                )
                              ],
                            ),
                      SizedBox(
                        height: 30,
                      ),
                      Divider(
                        indent: 12,
                        endIndent: 12,
                        thickness: 1,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.fromLTRB(20, 6, 0, 30),
                        child: Text(
                          "Choose a variant",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.red.shade800),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                setState(() {
                                  borderColor = 0xff8b0000;
                                });
                                Future.delayed(Duration(milliseconds: 200));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(borderColor)),
                                    borderRadius: BorderRadius.circular(12)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(22, 12, 22, 12),
                                  child: Text(
                                    "6 GB/128 GB",
                                    style: TextStyle(color: Color(borderColor)),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(22, 12, 22, 12),
                                child: Text(
                                  "8 GB/128 GB",
                                  style: TextStyle(),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 20, top: 10, bottom: 15),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(22, 12, 22, 12),
                            child: Text(
                              "8 GB/256 GB",
                              style: TextStyle(),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )),
          borderColor != 0xff000000
              ? Padding(
                  padding: EdgeInsets.fromLTRB(12, 0, 12, 10),
                  child: Card(
                      color: Color(0xfffdedb2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      elevation: 0,
                      child: Padding(
                          padding: const EdgeInsets.fromLTRB(35.0, 10, 35, 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                  "The prices indicated above are only indicative prices and may vary depending upon various factors"),
                            ],
                          ))),
                )
              : Container(),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(15, 10, 15, 20),
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(_createRoute());
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: borderColor == 0xff000000
                          ? Colors.grey.shade200
                          : Colors.red.shade900),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Get Exact Value",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ExactValue(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1, 0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
