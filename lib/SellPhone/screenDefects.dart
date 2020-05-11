import 'package:flutter/material.dart';

class ScreenDefect extends StatefulWidget {
  @override
  _ScreenDefectState createState() => _ScreenDefectState();
}

class _ScreenDefectState extends State<ScreenDefect> {
  int touchScreen = 5;
  int deadPixel = 5;
  int lines = 5;
  int physicalCd = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        actions: <Widget>[],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 0, 15, 10),
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Text(
                          "Tell us more about your device's screen defects!",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.w600),
                        )),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      "Because you chose defective screen",
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Text(
                      "1. Is your device's touch screen working properly?",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Check the touch screen of your phone.",
                        style: TextStyle(fontWeight: FontWeight.w300)),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            setState(() {
                              touchScreen = 1;
                            });
                          },
                          child: Container(
                            width: 180,
                            decoration: BoxDecoration(
                              color: touchScreen == 1
                                  ? Colors.red.shade600
                                  : Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(12, 18, 12, 18),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.center,
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Text(
                                      "A",
                                      style:
                                          TextStyle(color: Colors.red.shade900),
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(
                                    "Yes",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: touchScreen == 1
                                            ? Colors.white
                                            : Colors.black),
                                  ))
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              touchScreen = 0;
                            });
                          },
                          child: Container(
                            width: 180,
                            decoration: BoxDecoration(
                              color: touchScreen == 0
                                  ? Colors.red.shade600
                                  : Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.fromLTRB(12, 18, 12, 18),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.center,
                                    width: 20,
                                    height: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Text(
                                      "B",
                                      style:
                                          TextStyle(color: Colors.red.shade900),
                                    ),
                                  ),
                                  Expanded(
                                      child: Text(
                                    "No",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: touchScreen == 0
                                            ? Colors.white
                                            : Colors.black),
                                  ))
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Text(
                      "2. Dead Pixels/Spots on Screen",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Check your device's screen for visible spots.",
                        style: TextStyle(fontWeight: FontWeight.w300)),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            setState(() {
                              deadPixel = 0;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: deadPixel == 0
                                      ? Colors.red.shade600
                                      : Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade50,
                            ),
                            width: 180,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Icon(Icons.mobile_screen_share)),
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  child: Container(
                                    color: deadPixel == 0
                                        ? Colors.red.shade600
                                        : Colors.grey.shade200,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 10, 8, 10),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: Text(
                                              "A",
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                              child: Text(
                                            "Large/Heavy visible spots on screen",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: deadPixel == 0
                                                    ? Colors.white
                                                    : Colors.black),
                                          )),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              deadPixel = 1;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: deadPixel == 1
                                      ? Colors.red.shade600
                                      : Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade50,
                            ),
                            width: 180,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Icon(Icons.mobile_screen_share)),
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  child: Container(
                                    color: deadPixel == 1
                                        ? Colors.red.shade600
                                        : Colors.grey.shade200,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 10, 8, 10),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: Text(
                                              "B",
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                              child: Text(
                                            "Multiple visible spots on screen",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: deadPixel == 1
                                                    ? Colors.white
                                                    : Colors.black),
                                          )),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            setState(() {
                              deadPixel = 2;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: deadPixel == 2
                                      ? Colors.red.shade600
                                      : Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade50,
                            ),
                            width: 180,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Icon(Icons.mobile_screen_share)),
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  child: Container(
                                    color: deadPixel == 2
                                        ? Colors.red.shade600
                                        : Colors.grey.shade200,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 10, 8, 10),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: Text(
                                              "C",
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                              child: Text(
                                            "Minor or small spots",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: deadPixel == 2
                                                    ? Colors.white
                                                    : Colors.black),
                                          )),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              deadPixel = 3;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: deadPixel == 3
                                      ? Colors.red.shade600
                                      : Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade50,
                            ),
                            width: 180,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Icon(Icons.mobile_screen_share)),
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  child: Container(
                                    color: deadPixel == 3
                                        ? Colors.red.shade600
                                        : Colors.grey.shade200,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 10, 8, 10),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: Text(
                                              "D",
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                              child: Text(
                                            "No spots on screen",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: deadPixel == 3
                                                    ? Colors.white
                                                    : Colors.black),
                                          )),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Text(
                      "3.Visible Lines on Screen",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Check your device's screen for visible lines.",
                        style: TextStyle(fontWeight: FontWeight.w300)),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            setState(() {
                              lines = 0;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: lines == 0
                                      ? Colors.red.shade600
                                      : Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade50,
                            ),
                            width: 180,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Icon(Icons.mobile_screen_share)),
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  child: Container(
                                    color: lines == 0
                                        ? Colors.red.shade600
                                        : Colors.grey.shade200,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 10, 8, 10),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: Text(
                                              "A",
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                              child: Text(
                                            "Display faded along corners",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: lines == 0
                                                    ? Colors.white
                                                    : Colors.black),
                                          )),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              lines = 1;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: lines == 1
                                      ? Colors.red.shade600
                                      : Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade50,
                            ),
                            width: 180,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Icon(Icons.mobile_screen_share)),
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  child: Container(
                                    color: lines == 1
                                        ? Colors.red.shade600
                                        : Colors.grey.shade200,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 10, 8, 10),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: Text(
                                              "B",
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                              child: Text(
                                            "Multiple visible lines on Display",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: lines == 1
                                                    ? Colors.white
                                                    : Colors.black),
                                          )),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            setState(() {
                              lines = 2;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: lines == 2
                                      ? Colors.red.shade600
                                      : Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade50,
                            ),
                            width: 180,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Icon(Icons.mobile_screen_share)),
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  child: Container(
                                    color: lines == 2
                                        ? Colors.red.shade600
                                        : Colors.grey.shade200,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 10, 8, 10),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: Text(
                                              "C",
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                              child: Text(
                                            "No lines on Display",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: lines == 2
                                                    ? Colors.white
                                                    : Colors.black),
                                          )),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 28,
                    ),
                    Text(
                      "4. Screen Physical Condition",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text("Check physical condition of Display Screen.",
                        style: TextStyle(fontWeight: FontWeight.w300)),
                    SizedBox(
                      height: 14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            setState(() {
                              physicalCd = 0;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: physicalCd == 0
                                      ? Colors.red.shade600
                                      : Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade50,
                            ),
                            width: 180,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Icon(Icons.mobile_screen_share)),
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  child: Container(
                                    color: physicalCd == 0
                                        ? Colors.red.shade600
                                        : Colors.grey.shade200,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 10, 8, 10),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: Text(
                                              "A",
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                              child: Text(
                                            "Screen cracked/glass broken",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: physicalCd == 0
                                                    ? Colors.white
                                                    : Colors.black),
                                          )),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              physicalCd = 1;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: physicalCd == 1
                                      ? Colors.red.shade600
                                      : Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade50,
                            ),
                            width: 180,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Icon(Icons.mobile_screen_share)),
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  child: Container(
                                    color: physicalCd == 1
                                        ? Colors.red.shade600
                                        : Colors.grey.shade200,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 10, 8, 10),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: Text(
                                              "B",
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                              child: Text(
                                            "Damaged/ Torn screen on edges",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: physicalCd == 1
                                                    ? Colors.white
                                                    : Colors.black),
                                          )),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            setState(() {
                              physicalCd = 2;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: physicalCd == 2
                                      ? Colors.red.shade600
                                      : Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade50,
                            ),
                            width: 180,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Icon(Icons.mobile_screen_share)),
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  child: Container(
                                    color: physicalCd == 2
                                        ? Colors.red.shade600
                                        : Colors.grey.shade200,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 10, 8, 10),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: Text(
                                              "C",
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                              child: Text(
                                            "Heavy scratches on screen",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: physicalCd == 2
                                                    ? Colors.white
                                                    : Colors.black),
                                          )),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              physicalCd = 3;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: physicalCd == 3
                                      ? Colors.red.shade600
                                      : Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade50,
                            ),
                            width: 180,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Icon(Icons.mobile_screen_share)),
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  child: Container(
                                    color: physicalCd == 3
                                        ? Colors.red.shade600
                                        : Colors.grey.shade200,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 10, 8, 10),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: Text(
                                              "D",
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                              child: Text(
                                            "1-2 scratches on screen",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: deadPixel == 3
                                                    ? Colors.white
                                                    : Colors.black),
                                          )),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            setState(() {
                              physicalCd = 4;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: physicalCd == 4
                                      ? Colors.red.shade600
                                      : Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.shade50,
                            ),
                            width: 180,
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                    child: Icon(Icons.mobile_screen_share)),
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  child: Container(
                                    color: physicalCd == 4
                                        ? Colors.red.shade600
                                        : Colors.grey.shade200,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 10, 8, 10),
                                      child: Row(
                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.center,
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: Text(
                                              "E",
                                              style: TextStyle(
                                                  color: Colors.red.shade900),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Expanded(
                                              child: Text(
                                            "No scratches on screen",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: physicalCd == 4
                                                    ? Colors.white
                                                    : Colors.black),
                                          )),
                                          SizedBox(
                                            width: 8,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                if (touchScreen != 5 &&
                    physicalCd != 5 &&
                    lines != 5 &&
                    deadPixel != 5) {
                  Navigator.of(context).push(_createRoute());
                }
              },
              child: Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
                decoration: BoxDecoration(
                    color: touchScreen == 5 ||
                            physicalCd == 5 ||
                            lines == 5 ||
                            deadPixel == 5
                        ? Colors.grey.shade300
                        : Colors.red.shade900,
                    borderRadius: BorderRadius.circular(15)),
                alignment: Alignment.center,
                width: double.maxFinite,
                child: Text(
                  "Continue",
                  style: TextStyle(
                      fontSize: 19,
                      color: touchScreen == 5 ||
                              physicalCd == 5 ||
                              lines == 5 ||
                              deadPixel == 5
                          ? Colors.black
                          : Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ScreenDefect(),
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
