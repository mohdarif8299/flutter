import 'package:flutter/material.dart';
import 'package:internship_hb/HomeServices/cleaning_pest_category/bathroom_clean/payment_deepClean.dart';

class AnyAddOns extends StatefulWidget {
  final int amount;

  AnyAddOns(this.amount);

  @override
  _AnyAddOnsState createState() => _AnyAddOnsState();
}

class _AnyAddOnsState extends State<AnyAddOns> {
  bool viewOne =
  false; // when true, checked box is shown else unchecked box is shown
  bool viewTwo = false; // same as above but for second add-on
  bool viewThree = false; // same for third add-on
  bool viewFour = false; // same for fourth add-on
  var totalAmount; // total amount to be transferred to next screen, initial value same as received from previous screen

  @override
  void initState() {
    super.initState();
    totalAmount = widget.amount; // setting initial value of total amount
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bathroom Deep Cleaning"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 140,
                      alignment: Alignment.center,
                      child: Text(
                        "Any Add-ons",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          viewOne == true
                              ? IconButton(
                                  icon: Icon(Icons.check_box),
                                  onPressed: () {
                                    setState(() {
                                      viewOne = false;
                                    });
                                  },
                                )
                              : IconButton(
                                  icon: Icon(Icons.check_box_outline_blank),
                                  onPressed: () {
                                    setState(() {
                                      viewOne = true;
                                    });
                                  },
                                ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Text(
                              "Sofa cleaning",
                              style: TextStyle(fontSize: 18),
                              softWrap: true,
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          viewTwo == true
                              ? IconButton(
                                  icon: Icon(Icons.check_box),
                                  onPressed: () {
                                    setState(() {
                                      totalAmount = totalAmount - 400;
                                      viewTwo = false;
                                    });
                                  },
                                )
                              : IconButton(
                                  icon: Icon(Icons.check_box_outline_blank),
                                  onPressed: () {
                                    setState(() {
                                      totalAmount = totalAmount + 400;
                                      viewTwo = true;
                                    });
                                  },
                                ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Ceiling Fan",
                                    style: TextStyle(fontSize: 18),
                                    softWrap: true,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text("Get rid of dirts from fan blades")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          viewThree == true
                              ? IconButton(
                                  icon: Icon(Icons.check_box),
                                  onPressed: () {
                                    setState(() {
                                      totalAmount = totalAmount - 400;
                                      viewThree = false;
                                    });
                                  },
                                )
                              : IconButton(
                                  icon: Icon(Icons.check_box_outline_blank),
                                  onPressed: () {
                                    setState(() {
                                      totalAmount = totalAmount + 400;
                                      viewThree = true;
                                    });
                                  },
                                ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Kitchen Sink cleaning",
                                    style: TextStyle(fontSize: 18),
                                    softWrap: true,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                            "Deep cleaning to remove deep stains")
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
              alignment: Alignment.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(_createRoute(totalAmount));
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

Route _createRoute(int amount) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        PaymentsPage(amount),
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
