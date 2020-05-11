import 'package:flutter/material.dart';
import 'package:internship_hb/SellLaptop/questionaire/systemConfig.dart';

class QuestionOne extends StatefulWidget {
  @override
  _QuestionOneState createState() => _QuestionOneState();
}

class _QuestionOneState extends State<QuestionOne> {
  int switchOn= 3;

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
                padding: const EdgeInsets.fromLTRB(13.0, 0, 13, 10),
                child: ScrollConfiguration(
                  behavior: MyBehaviour(),
                  child: GlowingOverscrollIndicator(
                    showLeading: false,
                    showTrailing: false,
                    axisDirection: AxisDirection.down,
                    color: Colors.white,
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        SizedBox(height: 15,),
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              "Does the Laptop Switch ON?",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            )),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Click Yes if laptop switches on and loads operating system like Windows, Ubuntu or Mac",
                          style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:5),
                          child: Text(
                            "Laptop switching On?",
                            style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:5),
                          child: Text("Power on your laptop and check.",
                              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 13)),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                setState(() {
                                 switchOn = 1;

                                });
                              },
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                  color: switchOn == 1
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
                                                color: switchOn == 1
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
                                  switchOn = 0;

                                });
                              },
                              child: Container(
                                width: 180,
                                decoration: BoxDecoration(
                                  color: switchOn == 0
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
                                                color: switchOn == 0
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
                if(switchOn!=3){
                  {
                    Navigator.of(context).push(_createRoute());
                  }

                }
              },
              child: Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
                decoration: BoxDecoration(
                    color: switchOn==3?Colors.grey.shade300: Colors.red.shade900,
                    borderRadius: BorderRadius.circular(15)),
                alignment: Alignment.center,
                width: double.maxFinite,
                child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 19, color:switchOn==3? Colors.black: Colors.white),
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
    pageBuilder: (context, animation, secondaryAnimation) => QuestionTwo(),
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
