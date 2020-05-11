import 'package:flutter/material.dart';
import 'package:internship_hb/SellLaptop/questionaire/chooseCpu.dart';
import 'package:internship_hb/SellLaptop/questionaire/chooseDisk.dart';
import 'package:internship_hb/SellLaptop/questionaire/chooseRam.dart';
import 'package:internship_hb/SellLaptop/questionaire/functionalCond.dart';
import 'package:internship_hb/SellLaptop/questionaire/sharedValues.dart';

class QuestionTwo extends StatefulWidget {
  @override
  _QuestionTwoState createState() => _QuestionTwoState();
}

class _QuestionTwoState extends State<QuestionTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        actions: <Widget>[],
      ),
      body: Container(
        color: Colors.white,
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
                      shrinkWrap: true,
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Text(
                              "System Configurations",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            )),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Modify pre-selected configuration if required or select the configuration of device, not pre-selected",
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        InkWell(
                          onTap: () {
                            var router = new MaterialPageRoute(
                                builder: (BuildContext context) {
                              return ChooseCpu();
                            });
                            Navigator.push(context, router);
                          },
                          child: Card(
                            elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 6.0, top: 6, bottom: 6, right: 6),
                              child: ListTile(
                                leading:
                                    Image.asset("images/sellLaptop/cpu.png"),
                                title: Text(
                                  "Processor",
                                  style: TextStyle(fontSize: 14),
                                ),
                                subtitle: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(processor,
                                        style: TextStyle(
                                            fontSize: 15.5,
                                            color: Colors.red.shade600)),
                                  ],
                                ),
                                trailing: Icon(Icons.navigate_next),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        InkWell(
                          onTap: () {
                            var router = new MaterialPageRoute(
                                builder: (BuildContext context) {
                              return ChooseRam();
                            });
                            Navigator.push(context, router);
                          },
                          child: Card(
                            elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 6.0, top: 6, bottom: 6, right: 6),
                              child: ListTile(
                                leading:
                                    Image.asset("images/sellLaptop/ram.png"),
                                title: Text(
                                  "RAM",
                                  style: TextStyle(fontSize: 14),
                                ),
                                subtitle: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text("${ram.toString()} GB",
                                        style: TextStyle(
                                            fontSize: 15.5,
                                            color: Colors.red.shade600)),
                                  ],
                                ),
                                trailing: Icon(Icons.navigate_next),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        InkWell(
                          onTap: () {
                            var router = new MaterialPageRoute(
                                builder: (BuildContext context) {
                              return ChooseDisk();
                            });
                            Navigator.push(context, router);
                          },
                          child: Card(
                            elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 6.0, top: 6, bottom: 6, right: 6),
                              child: ListTile(
                                leading:
                                    Image.asset("images/sellLaptop/disk.png"),
                                title: Text(
                                  "Hard Disk",
                                  style: TextStyle(fontSize: 14),
                                ),
                                subtitle: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      height: 6,
                                    ),
                                    Text(hardDisk,
                                        style: TextStyle(
                                            fontSize: 15.5,
                                            color: Colors.red.shade600)),
                                  ],
                                ),
                                trailing: Icon(Icons.navigate_next),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(_createRoute());
              },
              child: Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(15, 0, 15, 10),
                decoration: BoxDecoration(
                    color: Colors.red.shade900,
                    borderRadius: BorderRadius.circular(15)),
                alignment: Alignment.center,
                width: double.maxFinite,
                child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 19, color: Colors.white),
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
    pageBuilder: (context, animation, secondaryAnimation) => QuestionThree(),
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
