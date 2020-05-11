import 'dart:async';

import 'package:flutter/material.dart';
import 'package:internship_hb/ConstructionMat/cementCategory/paymentCement.dart';

class SelectCemBrand extends StatefulWidget {
  @override
  _SelectCemBrandState createState() => _SelectCemBrandState();
}

class _SelectCemBrandState extends State<SelectCemBrand> {
  ScrollController _verticalScroll;
  ScrollController _horizontalScroll;
  int cementOne = 0; // quantity of cement one
  int cementTwo = 0; // quantity of cement two
  int cementThree = 0; // quantity of cement three
  int cementFour = 0; // quantity of cement four
  int cementFive = 0; // quantity of cement five
  bool scroll =
  true; // this variable prevents haphazard scrolling in top tab bar, it is required because we are using two scroll control functions. By using this variable only one function is enabled at a time.
  int totalAmount = 0; // total amount that is to be passed to next screen
  int selected = 1; // used to determine which top tab is selected

  @override
  void initState() {
    super.initState();
    _verticalScroll = ScrollController(); // to control vertical scroll
    _horizontalScroll = ScrollController(); // to control horizontal scroll
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text("Select Item & Quantity"),
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
                      scroll =
                      false; // set to false to prevent horizontal scrolling from misbehaving.
                      Timer(Duration(milliseconds: 200), () {
                        scroll =
                        true; // once we have reached our vertical point, we can again let the horizontal scroll do its work (i.e scroll the horizontal tabs while we are scrolling down vertically).
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
                          "JK Cement",
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
                      _verticalScroll.animateTo(420,
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
                          "UltraTech",
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
                      _verticalScroll.animateTo(840,
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
                          "Birla Cement",
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
                      _verticalScroll.animateTo(1060,
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
                          "ACC Cement",
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
                          "Ambuja Cement",
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
                      _verticalScroll.offset < 420) {
                    _horizontalScroll.animateTo(0,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease);
                    setState(() {
                      selected = 1;
                    });
                  }
                  if (420 < _verticalScroll.offset &&
                      _verticalScroll.offset < 840) {
                    _horizontalScroll.animateTo(0,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease);
                    setState(() {
                      selected = 2;
                    });
                  }
                  if (840 < _verticalScroll.offset &&
                      _verticalScroll.offset < 1060) {
                    _horizontalScroll.animateTo(200,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.ease);
                    setState(() {
                      selected = 3;
                    });
                  }
                  if (1060 < _verticalScroll.offset &&
                      _verticalScroll.offset < 1300) {
                    setState(() {
                      selected = 4;
                    });
                  }
                  if (_verticalScroll.offset > 1300) {
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
                          "JK Cement",
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
                                "images/cement1.png",
                                height: 200,
                                width: double.maxFinite,
                                fit: BoxFit.fitHeight,
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
                                        "JK Cement",
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
                                            Icons.line_weight,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("50 Kg")
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
                                cementOne == 0
                                    ? InkWell(
                                        onTap: () {
                                          setState(() {
                                            cementOne = cementOne + 1;
                                            totalAmount = cementOne * 499 +
                                                cementTwo * 499 +
                                                cementThree * 499 +
                                                cementFour * 499 +
                                                cementFive * 499;
                                          });
                                        },
                                        child: Container(
                                          width: 120,
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
                                                SizedBox(
                                                  width: 10,
                                                ),
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
                                    : Container(
                                  width: 120,
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
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              cementOne = cementOne - 1;
                                              totalAmount =
                                                  cementTwo * 499 +
                                                      cementThree * 499 +
                                                      cementFour * 499 +
                                                      cementFive * 499 +
                                                      cementOne * 499;
                                            });
                                          },
                                          child: Container(
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
                                                Icons.undo,
                                                color:
                                                Colors.red.shade700,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(cementOne.toString()),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        InkWell(
                                          splashColor: Colors.black,
                                          onTap: () {
                                            setState(() {
                                              cementOne = cementOne + 1;
                                              totalAmount =
                                                  cementOne * 499 +
                                                      cementTwo * 499 +
                                                      cementThree * 499 +
                                                      cementFour * 499 +
                                                      cementFive * 499;
                                            });
                                          },
                                          child: Container(
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
                                                Icons.add,
                                                color:
                                                Colors.red.shade700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
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
                          "UltraTech Cement",
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
                                "images/cement1.png",
                                height: 200,
                                width: double.maxFinite,
                                fit: BoxFit.fitHeight,
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
                                        "UltraTech Cement",
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
                                            Icons.line_weight,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("50 Kg")
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
                                cementTwo == 0
                                    ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      cementTwo = cementTwo + 1;
                                      totalAmount = cementOne * 499 +
                                          cementTwo * 499 +
                                          cementThree * 499 +
                                          cementFour * 499 +
                                          cementFive * 499;
                                    });
                                  },
                                  child: Container(
                                    width: 120,
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
                                          SizedBox(
                                            width: 10,
                                          ),
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
                                    : Container(
                                  width: 120,
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
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              cementTwo = cementTwo - 1;
                                              totalAmount =
                                                  cementOne * 499 +
                                                      cementThree * 499 +
                                                      cementFour * 499 +
                                                      cementFive * 499 +
                                                      cementTwo * 499;
                                            });
                                          },
                                          child: Container(
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
                                                Icons.undo,
                                                color:
                                                Colors.red.shade700,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(cementTwo.toString()),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        InkWell(
                                          splashColor: Colors.black,
                                          onTap: () {
                                            setState(() {
                                              cementTwo = cementTwo + 1;
                                              totalAmount =
                                                  cementOne * 499 +
                                                      cementTwo * 499 +
                                                      cementThree * 499 +
                                                      cementFour * 499 +
                                                      cementFive * 499;
                                            });
                                          },
                                          child: Container(
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
                                                Icons.add,
                                                color:
                                                Colors.red.shade700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ), //Cement Two
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 90,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "Birla Cement",
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
                                    "Birla Cement",
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
                                        Icons.line_weight,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("50 Kg")
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
                            cementThree == 0
                                ? InkWell(
                              onTap: () {
                                setState(() {
                                  cementThree = cementThree + 1;
                                  totalAmount = cementOne * 499 +
                                      cementTwo * 499 +
                                      cementThree * 499 +
                                      cementFour * 499 +
                                      cementFive * 499;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                width: 120,
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
                                      SizedBox(
                                        width: 10,
                                      ),
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
                                : Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade50,
                                  border: Border.all(
                                    color: Colors.red.shade700,
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.only(),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          cementThree = cementThree - 1;
                                          totalAmount = cementTwo * 499 +
                                              cementThree * 499 +
                                              cementFour * 499 +
                                              cementFive * 499 +
                                              cementOne * 499;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(5),
                                          color: Colors.grey.shade200,
                                        ),
                                        child: Padding(
                                          padding:
                                          const EdgeInsets.all(6.0),
                                          child: Icon(
                                            Icons.undo,
                                            color: Colors.red.shade700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(cementThree.toString()),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      splashColor: Colors.black,
                                      onTap: () {
                                        setState(() {
                                          cementThree = cementThree + 1;
                                          totalAmount = cementOne * 499 +
                                              cementTwo * 499 +
                                              cementThree * 499 +
                                              cementFour * 499 +
                                              cementFive * 499;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(5),
                                          color: Colors.grey.shade200,
                                        ),
                                        child: Padding(
                                          padding:
                                          const EdgeInsets.all(6.0),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.red.shade700,
                                          ),
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
                    Container(
                      alignment: Alignment.centerLeft,
                      height: 90,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          "ACC Cement",
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
                                "images/cement1.png",
                                height: 200,
                                width: double.maxFinite,
                                fit: BoxFit.fitHeight,
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
                                        "ACC Cement",
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
                                            Icons.line_weight,
                                            size: 18,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("50 Kg")
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
                                cementFour == 0
                                    ? InkWell(
                                  onTap: () {
                                    setState(() {
                                      cementFour = cementFour + 1;
                                      totalAmount = cementOne * 499 +
                                          cementTwo * 499 +
                                          cementThree * 499 +
                                          cementFour * 499 +
                                          cementFive * 499;
                                    });
                                  },
                                  child: Container(
                                    width: 120,
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
                                          SizedBox(
                                            width: 10,
                                          ),
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
                                    : Container(
                                  width: 120,
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
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              cementFour = cementFour - 1;
                                              totalAmount =
                                                  cementOne * 499 +
                                                      cementThree * 499 +
                                                      cementFour * 499 +
                                                      cementFive * 499 +
                                                      cementTwo * 499;
                                            });
                                          },
                                          child: Container(
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
                                                Icons.undo,
                                                color:
                                                Colors.red.shade700,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(cementFour.toString()),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        InkWell(
                                          splashColor: Colors.black,
                                          onTap: () {
                                            setState(() {
                                              cementFour = cementFour + 1;
                                              totalAmount =
                                                  cementOne * 499 +
                                                      cementTwo * 499 +
                                                      cementThree * 499 +
                                                      cementFour * 499 +
                                                      cementFive * 499;
                                            });
                                          },
                                          child: Container(
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
                                                Icons.add,
                                                color:
                                                Colors.red.shade700,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
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
                          "Ambuja Cement",
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
                                    "Ambuja Cement",
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
                                        Icons.line_weight,
                                        size: 18,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("50 Kg")
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
                            cementFive == 0
                                ? InkWell(
                              onTap: () {
                                setState(() {
                                  cementFive = cementFive + 1;
                                  totalAmount = cementOne * 499 +
                                      cementTwo * 499 +
                                      cementThree * 499 +
                                      cementFour * 499 +
                                      cementFive * 499;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(top: 20),
                                width: 120,
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
                                      SizedBox(
                                        width: 10,
                                      ),
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
                                : Container(
                              margin: EdgeInsets.only(top: 20),
                              width: 120,
                              decoration: BoxDecoration(
                                  color: Colors.grey.shade50,
                                  border: Border.all(
                                    color: Colors.red.shade700,
                                  ),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.only(),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          cementFive = cementFive - 1;
                                          totalAmount = cementTwo * 499 +
                                              cementThree * 499 +
                                              cementFour * 499 +
                                              cementFive * 499 +
                                              cementOne * 499;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(5),
                                          color: Colors.grey.shade200,
                                        ),
                                        child: Padding(
                                          padding:
                                          const EdgeInsets.all(6.0),
                                          child: Icon(
                                            Icons.undo,
                                            color: Colors.red.shade700,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(cementFive.toString()),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      splashColor: Colors.black,
                                      onTap: () {
                                        setState(() {
                                          cementFive = cementFive + 1;
                                          totalAmount = cementOne * 499 +
                                              cementTwo * 499 +
                                              cementThree * 499 +
                                              cementFour * 499 +
                                              cementFive * 499;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(5),
                                          color: Colors.grey.shade200,
                                        ),
                                        child: Padding(
                                          padding:
                                          const EdgeInsets.all(6.0),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.red.shade700,
                                          ),
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

                    SizedBox(
                      height: 30,
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
    pageBuilder: (context, animation, secondaryAnimation) =>
        CementPayment(amount),
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
