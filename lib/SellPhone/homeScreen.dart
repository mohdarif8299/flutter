import 'package:flutter/material.dart';
import 'package:internship_hb/SellPhone/selectModel.dart';

class SellPhone extends StatefulWidget {
  @override
  _SellPhoneState createState() => _SellPhoneState();
}

class _SellPhoneState extends State<SellPhone> {
  List<String> brandName = [
    "Apple",
    "OnePlus",
    "MI",
    "Apple",
    "OnePlus",
    "MI",
    "Apple",
    "OnePlus",
    "MI",
    "Apple",
    "OnePlus",
    "MI",
    "Apple",
    "OnePlus",
    "MI"
  ];

  List<String> brandImg = [
    "images/apple.png",
    "images/oneplus.png",
    "images/mi.png",
    "images/apple.png",
    "images/oneplus.png",
    "images/mi.png",
    "images/apple.png",
    "images/oneplus.png",
    "images/mi.png",
    "images/apple.png",
    "images/oneplus.png",
    "images/mi.png",
    "images/apple.png",
    "images/oneplus.png",
    "images/mi.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text("Select Brand"),
        actions: <Widget>[
          Icon(
            Icons.search,
            color: Colors.red,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 3,
              child: GridView.count(
                  shrinkWrap: true,
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 3,
                  crossAxisSpacing: 1,
                  childAspectRatio: 1.1,
                  mainAxisSpacing: 1,
                  children: List.generate(15, (index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(_createRoute());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: index == 2 || index == 5
                                ? BorderSide(
                                    width: 0.0, color: Colors.transparent)
                                : BorderSide(width: 0.2, color: Colors.black),
                            bottom: index < 12
                                ? BorderSide(width: 0.2, color: Colors.black)
                                : BorderSide(
                                    width: 0.0, color: Colors.transparent),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              brandImg[index],
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(brandName[index])
                          ],
                        ),
                      ),
                    );
                  })),
            ),
          )
        ],
      ),
    );
  }
}
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SelectModel(),
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
