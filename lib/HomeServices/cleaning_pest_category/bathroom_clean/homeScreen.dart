import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internship_hb/HomeServices/cleaning_pest_category/bathroom_clean/addOns.dart';
import 'package:internship_hb/HomeServices/cleaning_pest_category/bathroom_clean/customDashWidget.dart';

class BathroomClean extends StatefulWidget {
  @override
  _BathroomCleanState createState() => _BathroomCleanState();
}

class _BathroomCleanState extends State<BathroomClean> {
  ScrollController _verticalScroll; // scroll controller for top tabs
  ScrollController _horizontalScroll; // scroll controller for
  bool scroll =
  true; //this variable prevents haphazard scrolling in top tab bar, it is required because we are using two scroll control functions. By using this variable only one function is enabled at a time.
  int totalAmount = 0; // amount to be transferred to next screen
  int selected = 1; // to show which top tab is selected
  bool showOne = false; // shows if first option is selected
  bool showTwo = false; // shows if second option is selected
  bool showThree = false; //shows if third option is selected
  bool showFour = false; //shows if four option is selected
  bool showFive = false; //shows if five option is selected
  bool showSix = false; //shows if six option is selected
  bool showSeven = false; //shows if seven option is selected
  bool showEight = false; //shows if eight option is selected

  @override
  void initState() {
    super.initState();
    _verticalScroll = ScrollController();
    _horizontalScroll = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text("Bathroom Deep Cleaning"),
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            color: Colors.white,
            height: 50,
            child: SingleChildScrollView(
              controller: _horizontalScroll,
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      scroll = false;
                      Timer(Duration(milliseconds: 200), () {
                        scroll = true;
                      });
                      setState(() {
                        selected = 1;
                      });
                      _verticalScroll.animateTo(0,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.ease);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: selected == 1
                              ? Colors.red.shade600
                              : Colors.white,
                          border: Border.all(
                              color: selected == 1
                                  ? Colors.red.shade600
                                  : Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "1 Bathroom",
                          style: TextStyle(
                              color:
                                  selected == 1 ? Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      scroll = false;

                      setState(() {
                        selected = 2;
                      });
                      _verticalScroll.animateTo(535,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.ease);
                      _horizontalScroll.animateTo(0,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.ease);
                      Timer(Duration(milliseconds: 500), () {
                        scroll = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: selected == 2
                              ? Colors.red.shade600
                              : Colors.white,
                          border: Border.all(
                              color: selected == 2
                                  ? Colors.red.shade600
                                  : Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "2 Bathrooms",
                          style: TextStyle(
                              color:
                                  selected == 2 ? Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      scroll = false;
                      setState(() {
                        selected = 3;
                      });
                      _verticalScroll.animateTo(1323,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.ease);
                      _horizontalScroll.animateTo(150,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.ease);
                      Timer(Duration(milliseconds: 500), () {
                        scroll = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: selected == 3
                              ? Colors.red.shade600
                              : Colors.white,
                          border: Border.all(
                              color: selected == 3
                                  ? Colors.red.shade600
                                  : Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "3 Bathrooms",
                          style: TextStyle(
                              color:
                                  selected == 3 ? Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      scroll = false;
                      setState(() {
                        selected = 4;
                      });
                      _verticalScroll.animateTo(1543,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.ease);
                      _horizontalScroll.animateTo(
                          MediaQuery.of(context).size.width,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.ease);
                      Timer(Duration(milliseconds: 500), () {
                        scroll = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: selected == 4
                              ? Colors.red.shade600
                              : Colors.white,
                          border: Border.all(
                              color: selected == 4
                                  ? Colors.red.shade600
                                  : Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "4 Bathrooms",
                          style: TextStyle(
                              color:
                                  selected == 4 ? Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      scroll = false;
                      setState(() {
                        selected = 5;
                      });
                      _verticalScroll.animateTo(1763,
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.ease);
                      Timer(Duration(milliseconds: 500), () {
                        scroll = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: selected == 5
                              ? Colors.red.shade600
                              : Colors.white,
                          border: Border.all(
                              color: selected == 5
                                  ? Colors.red.shade600
                                  : Colors.black),
                          borderRadius: BorderRadius.circular(5)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Text(
                          "5 Bathrooms",
                          style: TextStyle(
                              color:
                                  selected == 5 ? Colors.white : Colors.black),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: NotificationListener<ScrollNotification>(
              onNotification: (scrollNotification) {
                if (scroll) {
                  if (0 < _verticalScroll.offset &&
                      _verticalScroll.offset < 530) {
                    _horizontalScroll.animateTo(0,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease);
                    setState(() {
                      selected = 1;
                    });
                  }
                  if (530 < _verticalScroll.offset &&
                      _verticalScroll.offset < 1323) {
                    _horizontalScroll.animateTo(0,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease);
                    setState(() {
                      selected = 2;
                    });
                  }
                  if (1323 < _verticalScroll.offset &&
                      _verticalScroll.offset < 1543) {
                    _horizontalScroll.animateTo(200,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease);
                    setState(() {
                      selected = 3;
                    });
                  }
                  if (1543 < _verticalScroll.offset &&
                      _verticalScroll.offset < 1763) {
                    setState(() {
                      selected = 4;
                    });
                  }
                  if (_verticalScroll.offset > 1600) {
                    _horizontalScroll.animateTo(300,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease);
                    setState(() {
                      selected = 5;
                    });
                  }
                }
                return null;
              },
              child: SingleChildScrollView(
                controller: _verticalScroll,
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 90,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "1 Bathroom",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 330,
                      width: double.maxFinite,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 15, 16, 10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                "images/sofa.jpg",
                                height: 200,
                                width: double.maxFinite,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "1 Bathroom",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text("₹499"),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "₹899",
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Icon(
                                            Icons.access_time,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("90 min")
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "View Details",
                                            style: TextStyle(
                                                color: Colors.red.shade700),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.red.shade700,
                                            size: 15,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                showOne == false
                                    ? InkWell(
                                        onTap: () {
                                          setState(() {
                                            totalAmount = totalAmount + 499;
                                            showOne = true;
                                          });
                                        },
                                        child: Container(
                                          width: 90,
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade50,
                                              border: Border.all(
                                                color: Colors.red.shade700,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                              left: 12.0,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Text(
                                                  "ADD",
                                                  style: TextStyle(
                                                      color:
                                                          Colors.red.shade700,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.grey.shade200,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            6.0),
                                                    child: Icon(Icons.add),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    : InkWell(
                                        onTap: () {
                                          setState(() {
                                            totalAmount = totalAmount - 499;
                                            showOne = false;
                                          });
                                        },
                                        child: Container(
                                          width: 90,
                                          decoration: BoxDecoration(
                                              color: Colors.grey.shade50,
                                              border: Border.all(
                                                color: Colors.red.shade700,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: <Widget>[
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Colors.grey.shade200,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            6.0),
                                                    child: Icon(
                                                      Icons.delete,
                                                      color:
                                                          Colors.red.shade700,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text("1"),
                                                SizedBox(
                                                  width: 15,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 100,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              "images/sofa.jpg",
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "1 Bathroom + 2 Fans",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("₹499"),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "₹899",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(
                                        Icons.access_time,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("90 min")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                            showTwo == false
                                ? InkWell(
                                    onTap: () {
                                      setState(() {
                                        totalAmount = totalAmount + 499;
                                        showTwo = true;
                                      });
                                    },
                                    child: Container(
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade50,
                                          border: Border.all(
                                            color: Colors.red.shade700,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 12.0,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "ADD",
                                              style: TextStyle(
                                                  color: Colors.red.shade700,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                child: Icon(Icons.add),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : InkWell(
                                    onTap: () {
                                      setState(() {
                                        totalAmount = totalAmount - 499;
                                        showTwo = false;
                                      });
                                    },
                                    child: Container(
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade50,
                                          border: Border.all(
                                            color: Colors.red.shade700,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                child: Icon(
                                                  Icons.delete,
                                                  color: Colors.red.shade700,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("1"),
                                            SizedBox(
                                              width: 15,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 90,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "2 Bathrooms",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 485,
                      width: double.maxFinite,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 15, 16, 10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                "images/sofa.jpg",
                                height: 200,
                                width: double.maxFinite,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "2 Bathrooms",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Text("₹499"),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "₹899",
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Icon(
                                                Icons.access_time,
                                                size: 18,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text("90 min")
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                    showThree == false
                                        ? InkWell(
                                            onTap: () {
                                              setState(() {
                                                totalAmount = totalAmount + 499;
                                                showThree = true;
                                              });
                                            },
                                            child: Container(
                                              width: 90,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade50,
                                                  border: Border.all(
                                                    color: Colors.red.shade700,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 12.0,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "ADD",
                                                      style: TextStyle(
                                                          color: Colors
                                                              .red.shade700,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: Colors
                                                            .grey.shade200,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(6.0),
                                                        child: Icon(Icons.add),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        : InkWell(
                                            onTap: () {
                                              setState(() {
                                                totalAmount = totalAmount - 499;
                                                showThree = false;
                                              });
                                            },
                                            child: Container(
                                              width: 90,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade50,
                                                  border: Border.all(
                                                    color: Colors.red.shade700,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.only(),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: Colors
                                                            .grey.shade200,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(6.0),
                                                        child: Icon(
                                                          Icons.delete,
                                                          color: Colors
                                                              .red.shade700,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("1"),
                                                    SizedBox(
                                                      width: 15,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    child: MySeparator(
                                  color: Colors.grey,
                                  height: .5,
                                )),
                                SizedBox(
                                  height: 15,
                                ),
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 2.5,
                                          backgroundColor: Colors.grey.shade400,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Text(
                                            "Deep cleaning of floor and wall tiles",
                                            style: TextStyle(
                                                color: Colors.grey.shade600),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 2.5,
                                          backgroundColor: Colors.grey.shade400,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Text(
                                            "Deposit removal from all taps and fittings",
                                            style: TextStyle(
                                                color: Colors.grey.shade600),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 2.5,
                                          backgroundColor: Colors.grey.shade400,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Text(
                                            "Deep cleaning of WC and wash basin",
                                            style: TextStyle(
                                                color: Colors.grey.shade600),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 2.5,
                                          backgroundColor: Colors.grey.shade400,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Text(
                                            "Other areas: Mirror, exhaust fan, geyser",
                                            style: TextStyle(
                                                color: Colors.grey.shade600),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "View Details",
                                      style:
                                          TextStyle(color: Colors.red.shade700),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.red.shade700,
                                      size: 15,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              "images/sofa.jpg",
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "2 Bathrooms + 3 Fans",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("₹499"),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "₹899",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(
                                        Icons.access_time,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("90 min")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                            showFour == false
                                ? InkWell(
                                    onTap: () {
                                      setState(() {
                                        totalAmount = totalAmount + 499;
                                        showFour = true;
                                      });
                                    },
                                    child: Container(
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade50,
                                          border: Border.all(
                                            color: Colors.red.shade700,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 12.0,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "ADD",
                                              style: TextStyle(
                                                  color: Colors.red.shade700,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                child: Icon(Icons.add),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : InkWell(
                                    onTap: () {
                                      setState(() {
                                        totalAmount = totalAmount - 499;
                                        showFour = false;
                                      });
                                    },
                                    child: Container(
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade50,
                                          border: Border.all(
                                            color: Colors.red.shade700,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                child: Icon(
                                                  Icons.delete,
                                                  color: Colors.red.shade700,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("1"),
                                            SizedBox(
                                              width: 15,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      height: 100,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Row(
                          children: <Widget>[
                            Image.asset(
                              "images/sofa.jpg",
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "2 Bathrooms + 1 Balcony",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("₹499"),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "₹899",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(
                                        Icons.access_time,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("90 min")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                            showFive == false
                                ? InkWell(
                                    onTap: () {
                                      setState(() {
                                        totalAmount = totalAmount + 499;
                                        showFive = true;
                                      });
                                    },
                                    child: Container(
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade50,
                                          border: Border.all(
                                            color: Colors.red.shade700,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 12.0,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "ADD",
                                              style: TextStyle(
                                                  color: Colors.red.shade700,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                child: Icon(Icons.add),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : InkWell(
                                    onTap: () {
                                      setState(() {
                                        totalAmount = totalAmount - 499;
                                        showFive = false;
                                      });
                                    },
                                    child: Container(
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade50,
                                          border: Border.all(
                                            color: Colors.red.shade700,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                child: Icon(
                                                  Icons.delete,
                                                  color: Colors.red.shade700,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("1"),
                                            SizedBox(
                                              width: 15,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 90,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "3 Bathrooms",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      height: 130,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Image.asset(
                                "images/sofa.jpg",
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "3 Bathrooms",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("₹499"),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "₹899",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(
                                        Icons.access_time,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("90 min")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "View Details",
                                        style: TextStyle(
                                            color: Colors.red.shade700),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.red.shade700,
                                        size: 15,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            showSix == false
                                ? InkWell(
                                    onTap: () {
                                      setState(() {
                                        totalAmount = totalAmount + 499;
                                        showSix = true;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(top: 25),
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade50,
                                          border: Border.all(
                                            color: Colors.red.shade700,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 12.0,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "ADD",
                                              style: TextStyle(
                                                  color: Colors.red.shade700,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                child: Icon(Icons.add),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : InkWell(
                                    onTap: () {
                                      setState(() {
                                        totalAmount = totalAmount - 499;
                                        showSix = false;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(top: 25),
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade50,
                                          border: Border.all(
                                            color: Colors.red.shade700,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                child: Icon(
                                                  Icons.delete,
                                                  color: Colors.red.shade700,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("1"),
                                            SizedBox(
                                              width: 15,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 90,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "4 Bathrooms",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      height: 130,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Image.asset(
                                "images/sofa.jpg",
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "4 Bathrooms",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text("₹499"),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "₹899",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(
                                        Icons.access_time,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("90 min")
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        "View Details",
                                        style: TextStyle(
                                            color: Colors.red.shade700),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: Colors.red.shade700,
                                        size: 15,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            showSeven == false
                                ? InkWell(
                                    onTap: () {
                                      setState(() {
                                        totalAmount = totalAmount + 499;
                                        showSeven = true;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(top: 25),
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade50,
                                          border: Border.all(
                                            color: Colors.red.shade700,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 12.0,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "ADD",
                                              style: TextStyle(
                                                  color: Colors.red.shade700,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                child: Icon(Icons.add),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : InkWell(
                                    onTap: () {
                                      setState(() {
                                        totalAmount = totalAmount - 499;
                                        showSeven = false;
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(top: 25),
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade50,
                                          border: Border.all(
                                            color: Colors.red.shade700,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.grey.shade200,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(6.0),
                                                child: Icon(
                                                  Icons.delete,
                                                  color: Colors.red.shade700,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text("1"),
                                            SizedBox(
                                              width: 15,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 90,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "5 Bathrooms",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      height: 485,
                      width: double.maxFinite,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 15, 16, 10),
                        child: Column(
                          children: <Widget>[
                            Container(
                              child: Image.asset(
                                "images/sofa.jpg",
                                height: 200,
                                width: double.maxFinite,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "5 Bathrooms",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Text("₹499"),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "₹899",
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .lineThrough),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Icon(
                                                Icons.access_time,
                                                size: 18,
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text("90 min")
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                    showEight == false
                                        ? InkWell(
                                            onTap: () {
                                              setState(() {
                                                totalAmount = totalAmount + 499;
                                                showEight = true;
                                              });
                                            },
                                            child: Container(
                                              width: 90,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade50,
                                                  border: Border.all(
                                                    color: Colors.red.shade700,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                  left: 12.0,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "ADD",
                                                      style: TextStyle(
                                                          color: Colors
                                                              .red.shade700,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: Colors
                                                            .grey.shade200,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(6.0),
                                                        child: Icon(Icons.add),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          )
                                        : InkWell(
                                            onTap: () {
                                              setState(() {
                                                totalAmount = totalAmount - 499;
                                                showEight = false;
                                              });
                                            },
                                            child: Container(
                                              width: 90,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade50,
                                                  border: Border.all(
                                                    color: Colors.red.shade700,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.only(),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5),
                                                        color: Colors
                                                            .grey.shade200,
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(6.0),
                                                        child: Icon(
                                                          Icons.delete,
                                                          color: Colors
                                                              .red.shade700,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text("1"),
                                                    SizedBox(
                                                      width: 15,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    child: MySeparator(
                                  color: Colors.grey,
                                  height: .5,
                                )),
                                SizedBox(
                                  height: 15,
                                ),
                                Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 2.5,
                                          backgroundColor: Colors.grey.shade400,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Text(
                                            "Deep cleaning of floor and wall tiles",
                                            style: TextStyle(
                                                color: Colors.grey.shade600),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 2.5,
                                          backgroundColor: Colors.grey.shade400,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Text(
                                            "Deposit removal from all taps and fittings",
                                            style: TextStyle(
                                                color: Colors.grey.shade600),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 2.5,
                                          backgroundColor: Colors.grey.shade400,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Text(
                                            "Deep cleaning of WC and wash basin",
                                            style: TextStyle(
                                                color: Colors.grey.shade600),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 2.5,
                                          backgroundColor: Colors.grey.shade400,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 15),
                                          child: Text(
                                            "Other areas: Mirror, exhaust fan, geyser",
                                            style: TextStyle(
                                                color: Colors.grey.shade600),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "View Details",
                                      style:
                                          TextStyle(color: Colors.red.shade700),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.red.shade700,
                                      size: 15,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
            alignment: Alignment.bottomCenter,
            child: InkWell(
              onTap: () {
                if (totalAmount != 0) {
                  Navigator.of(context).push(_createRoute(totalAmount));
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: totalAmount == 0
                        ? Colors.grey.shade300
                        : Colors.red.shade900),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    totalAmount != 0
                        ? Text(
                            "₹${totalAmount.toString()}  ",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          )
                        : Container(
                            height: 0,
                            width: 0,
                          ),
                    Text(
                      "Continue",
                      style: TextStyle(
                        color: totalAmount == 0 ? Colors.black : Colors.white,
                        fontSize: 19,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: totalAmount == 0 ? Colors.black : Colors.white,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Route _createRoute(int amount) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => AnyAddOns(amount),
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
