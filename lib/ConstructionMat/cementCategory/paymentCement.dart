import 'package:flutter/material.dart';

class CementPayment extends StatefulWidget {
  final int amount;
  CementPayment(this.amount);
  @override
  _CementPaymentState createState() => _CementPaymentState();
}

class _CementPaymentState extends State<CementPayment> {
  MediaQueryData size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cement Payment"),
        elevation: 1,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: <Widget>[
                      Container(
                        //for item costs
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Item total",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text("₹ ${widget.amount}")
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("Offer discount"),
                                  Text("₹ 400")
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Divider(
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    "Total",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "₹ ${widget.amount - 400}",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.orangeAccent.shade100.withOpacity(.5),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 5, 20, 5),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.folder),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Hurray! You are saving ₹ 400",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 15,
                        color: Colors.grey.shade100,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          height: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.filter_tilt_shift),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Offers, promo card and gift cards",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500)),
                                  Text("1 offer available",
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500,
                                      ))
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 15,
                        color: Colors.grey.shade100,
                      ),
                    ],
                  ),
                )),
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
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
                        "Continue",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                        ),
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
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => null,
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
