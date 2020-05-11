import 'package:flutter/material.dart';
import 'package:internship_hb/SellPhone/initialPrice.dart';

class SelectModel extends StatefulWidget {
  @override
  _SelectModelState createState() => _SelectModelState();
}

class _SelectModelState extends State<SelectModel> {
  List<String> brandName = [
    "OnePlus 7T Pro",
    "OnePlus 7T",
    "OnePlus 7 Pro",
    "OnePlus 7",
    "OnePlus 6T",
    "OnePlus 6",
    "OnePlus 5T",
    "OnePlus 5",
  ];

  List<String> brandImg = [
    "images/op7p.png",
    "images/op7t.png",
    "images/op7p.png",
    "images/op7t.png",
    "images/op6.png",
    "images/op6.png",
    "images/op7p.png",
    "images/op7t.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text("Select Model"),
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
                  children: List.generate(8, (index) {
                    return InkWell(
                      onTap: () {
                        Future.delayed(Duration(milliseconds: 300));
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
                              height: 55,
                              width: 40,
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              brandName[index],
                              style: TextStyle(fontSize: 12),
                            )
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
    pageBuilder: (context, animation, secondaryAnimation) => PriceView(),
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
