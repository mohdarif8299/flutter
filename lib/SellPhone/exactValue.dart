import 'package:flutter/material.dart';
import 'package:internship_hb/SellPhone/screenDefects.dart';

class ExactValue extends StatefulWidget {
  @override
  _ExactValueState createState() => _ExactValueState();
}

class _ExactValueState extends State<ExactValue> {
  ScrollController _scroll;
  int receiveCalls = 2;
  int screenFault = 2;
  int phoneBodyFault = 2;
  int warrantyVoid = 2;

  @override
  void initState() {
    super.initState();
    _scroll = ScrollController();
  }

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
                child: ScrollConfiguration(
                  behavior: MyBehaviour(),
                  child: GlowingOverscrollIndicator(
                    showLeading: false,
                    showTrailing: false,
                    axisDirection: AxisDirection.down,
                    color: Colors.white,
                    child: ListView(
                      controller: _scroll,
                      shrinkWrap: true,
                      children: <Widget>[
                        SizedBox(height: 15,),
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              "Tell us a few things about your device!",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            )),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "What is the current condition of your device",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Text(
                          "1. Are you able to make or receive calls?",
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text("Check your device for network or cellular issues.",
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
                                  receiveCalls = 1;
                                  _scroll.animateTo(376.0,
                                      duration:
                                      const Duration(milliseconds: 100),
                                      curve: Curves.ease);
                                });
                              },
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                  color: receiveCalls == 1
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
                                            color: receiveCalls == 1
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
                                  receiveCalls = 0;
                                  _scroll.animateTo(376.0,
                                      duration:
                                      const Duration(milliseconds: 100),
                                      curve: Curves.ease);
                                });
                              },
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                  color: receiveCalls == 0
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
                                            color: receiveCalls == 0
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
                          height: 18,
                        ),
                        Text(
                          "2. Are there any problems with your mobile screen?",
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                            "Check your mobile screen for scratches, cracks, discoloration spots, lines or touch issues.",
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
                                  screenFault = 1;
                                  _scroll.animateTo(376.0,
                                      duration:
                                      const Duration(milliseconds: 100),
                                      curve: Curves.ease);
                                });
                              },
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                  color: screenFault == 1
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
                                            color: screenFault == 1
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
                                  screenFault = 0;
                                  _scroll.animateTo(376.0,
                                      duration:
                                      const Duration(milliseconds: 100),
                                      curve: Curves.ease);
                                });
                              },
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                  color: screenFault == 0
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
                                            color: screenFault == 0
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
                          height: 18,
                        ),
                        Text(
                          "3. Are there any defects on your phone body?",
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                            "Check your device body (back and edges) for visible scratches and dents.",
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
                                  phoneBodyFault = 1;
                                  _scroll.animateTo(376.0,
                                      duration:
                                      const Duration(milliseconds: 100),
                                      curve: Curves.ease);
                                });
                              },
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                  color: phoneBodyFault == 1
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
                                            color: phoneBodyFault == 1
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
                                  phoneBodyFault = 0;
                                  _scroll.animateTo(376.0,
                                      duration:
                                      const Duration(milliseconds: 300),
                                      curve: Curves.easeOut);

                                });
                              },
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                  color: phoneBodyFault == 0
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
                                            color: phoneBodyFault == 0
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
                          height: 18,
                        ),
                        Text(
                          "4. Is your phone under warranty?",
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                            "You can get a better price for your device, if it's under warranty.",
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
                                  warrantyVoid = 1;
                                  _scroll.animateTo(376.0,
                                      duration:
                                      const Duration(milliseconds: 100),
                                      curve: Curves.ease);
                                });
                              },
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                  color: warrantyVoid == 1
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
                                            color: warrantyVoid == 1
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
                                  warrantyVoid = 0;
                                  _scroll.animateTo(376.0,
                                      duration:
                                      const Duration(milliseconds: 100),
                                      curve: Curves.ease);
                                });
                              },
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                  color: warrantyVoid == 0
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
                                            color: receiveCalls == 0
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
                          height: 18,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                if(phoneBodyFault!=2&&warrantyVoid!=2&&screenFault!=2&&receiveCalls!=2){
                  if(screenFault==1){
                    Navigator.of(context).push(_createRoute());
                  }

                }
              },
              child: Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
                decoration: BoxDecoration(
                    color: phoneBodyFault==2||warrantyVoid==2||screenFault==2||receiveCalls==2?Colors.grey.shade300: Colors.red.shade900,
                    borderRadius: BorderRadius.circular(15)),
                alignment: Alignment.center,
                width: double.maxFinite,
                child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 19, color: phoneBodyFault==2||warrantyVoid==2||screenFault==2||receiveCalls==2? Colors.black: Colors.white),
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

class MyBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
