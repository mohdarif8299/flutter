import 'package:flutter/material.dart';
import 'package:internship_hb/Shopping/productDisplay/productDisplay.dart';

import '../dailyDeals.dart';
import '../superHitDeals.dart';
import '../topSelections.dart';

class SectionCard extends StatelessWidget {
  final String image;
  final String title;
  final Color textColor;
  final Color viewBox;
  final Color viewText;
  final int page;

  SectionCard(this.image, this.title, this.textColor, this.viewBox,
      this.viewText, this.page);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 395,
        margin: EdgeInsets.only(bottom: 0),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill)),
      ),
      Container(
        margin: EdgeInsets.only(top: 28),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 20),
                      ),
                      InkWell(
                        onTap: () {
                          var router = new MaterialPageRoute(
                              builder: (BuildContext context) {
                            if (page == 1) {
                              return TopSelections();
                            } else if (page == 2) {
                              return SuperHitDeals();
                            } else
                              return DailyDeals();
                          });
                          Navigator.push(context, router);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: viewBox,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                            child: Text(
                              "View all",
                              style: TextStyle(
                                  color: viewText, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  child: Card(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              var router = new MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return ProductDisplay();
                              });
                              Navigator.push(context, router);
                            },
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 160,
                                  decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            width: 0.3,
                                            color: Colors.grey.shade400),
                                        left: BorderSide(
                                            width: 0.3,
                                            color: Colors.grey.shade400)),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      var router = new MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return ProductDisplay();
                                      });
                                      Navigator.push(context, router);
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset(
                                          "images/shop/lap6.png",
                                          height: 70,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8.0, 10, 8, 5),
                                          child: Text(
                                            "Cell Phone Holder - Flexible....",
                                            style: TextStyle(fontSize: 12),
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
                                                  color: Colors.red.shade800),
                                            ),
                                            Text(
                                              " 60% off",
                                              style: TextStyle(
                                                  color: Colors.green.shade800),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 160,
                                  decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            width: 0.3,
                                            color: Colors.grey.shade400),
                                        left: BorderSide(
                                            width: 0.3,
                                            color: Colors.grey.shade400)),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      var router = new MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return ProductDisplay();
                                      });
                                      Navigator.push(context, router);
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset(
                                          "images/shop/lap4.png",
                                          height: 70,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8.0, 10, 8, 5),
                                          child: Text(
                                            "Cell Phone Holder - Flexible....",
                                            style: TextStyle(fontSize: 12),
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
                                                  color: Colors.red.shade800),
                                            ),
                                            Text(
                                              " 60% off",
                                              style: TextStyle(
                                                  color: Colors.green.shade800),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              var router = new MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return ProductDisplay();
                              });
                              Navigator.push(context, router);
                            },
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 160,
                                  decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            width: 0.3,
                                            color: Colors.grey.shade400),
                                        left: BorderSide(
                                            width: 0.3,
                                            color: Colors.grey.shade400)),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      var router = new MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return ProductDisplay();
                                      });
                                      Navigator.push(context, router);
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset(
                                          "images/shop/lap2.png",
                                          height: 70,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8.0, 10, 8, 5),
                                          child: Text(
                                            "Cell Phone Holder - Flexible....",
                                            style: TextStyle(fontSize: 12),
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
                                                  color: Colors.red.shade800),
                                            ),
                                            Text(
                                              " 60% off",
                                              style: TextStyle(
                                                  color: Colors.green.shade800),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 160,
                                  decoration: BoxDecoration(
                                    border: Border(
                                        top: BorderSide(
                                            width: 0.3,
                                            color: Colors.grey.shade400),
                                        left: BorderSide(
                                            width: 0.3,
                                            color: Colors.grey.shade400)),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      var router = new MaterialPageRoute(
                                          builder: (BuildContext context) {
                                        return ProductDisplay();
                                      });
                                      Navigator.push(context, router);
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset(
                                          "images/shop/lap2.png",
                                          height: 70,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              8.0, 10, 8, 5),
                                          child: Text(
                                            "Cell Phone Holder - Flexible....",
                                            style: TextStyle(fontSize: 12),
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
                                                  color: Colors.red.shade800),
                                            ),
                                            Text(
                                              " 60% off",
                                              style: TextStyle(
                                                  color: Colors.green.shade800),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
