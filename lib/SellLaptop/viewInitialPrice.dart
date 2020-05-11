import 'package:flutter/material.dart';
import 'package:internship_hb/SellLaptop/questionaire/laptopOnOff.dart';

class InitialLPrice extends StatefulWidget {
  final String modelName;

  InitialLPrice(this.modelName);

  @override
  _InitialLPriceState createState() => _InitialLPriceState();
}

class _InitialLPriceState extends State<InitialLPrice> {
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
                            widget.modelName,
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            width: 30,
                          ),
                          Image.asset(
                            "images/shop/lap7.png",
                            height: 80,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Get upto",
                                  style: TextStyle(
                                    fontSize: 12.5,
                                  )),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "₹ 35,000",
                                style: TextStyle(
                                    fontSize: 28, color: Colors.red.shade800),
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
                    ],
                  ),
                ),
              )),
          Padding(
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
                            "The prices indicated above depending upon various factors and is not final. The final price offer will be quoted at the end of this diagnosis"),
                      ],
                    ))),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(35, 10, 35, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.security),
                    SizedBox(
                      height: 6,
                    ),
                    Text("Safe & Secure")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.add_shopping_cart),
                    SizedBox(
                      height: 6,
                    ),
                    Text("Free pickup")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.attach_money),
                    SizedBox(
                      height: 6,
                    ),
                    Text("No Hagging")
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 25,
            thickness: 1.5,
            indent: 20,
            endIndent: 20,
          ),
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
                      color: Colors.red.shade900),
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
    pageBuilder: (context, animation, secondaryAnimation) => QuestionOne(),
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
