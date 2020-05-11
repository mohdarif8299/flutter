import 'package:flutter/material.dart';
import 'package:internship_hb/SellLaptop/viewInitialPrice.dart';

class LaptopModel extends StatefulWidget {
  final String series;
  final String subSeries;
  LaptopModel(this.series, this.subSeries);
  @override
  _LaptopModelState createState() => _LaptopModelState();
}

class _LaptopModelState extends State<LaptopModel> {
  List<String> modelName = [
    "Model 1",
    "Model 2",
    "Model 3",
    "Model 4",
    "Model 5",
    "Model 6",
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
            padding: const EdgeInsets.fromLTRB(25, 20, 15, 5),
            child: Row(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade400)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 8, 10, 8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            widget.series,
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.cancel,
                            size: 18,
                            color: Colors.red.shade600,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade400)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 8, 10, 8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            widget.subSeries,
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.cancel,
                            size: 18,
                            color: Colors.red.shade600,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                  children: List.generate(5, (index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            _createRoute(modelName[index]));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: index == 2 || index == 5
                                ? BorderSide(
                                width: 0.0, color: Colors.transparent)
                                : BorderSide(width: 0.2, color: Colors.black),
                            bottom: index < 3
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
                            Text(modelName[index])
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

Route _createRoute(String modelName) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => InitialLPrice(modelName),
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
