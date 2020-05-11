import 'package:flutter/material.dart';
import 'package:internship_hb/ConstructionMat/bricksSelection.dart';
import 'package:internship_hb/ConstructionMat/cementCategory/cementSelection.dart';
import 'package:internship_hb/ConstructionMat/sandSelection.dart';
import 'package:internship_hb/ConstructionMat/stoneSelection.dart';
import 'package:internship_hb/ConstructionMat/tmtBarsSelection.dart';

class ConstructionHome extends StatefulWidget {
  @override
  _ConstructionHomeState createState() => _ConstructionHomeState();
}

class _ConstructionHomeState extends State<ConstructionHome> {
  List<String> image = [
    // images shown as icons
    "images/hm1.png",
    "images/hm2.png",
    "images/image1.png",
    "images/image2.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 1, title: Text("Construction Material")),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Container(
              height: 190,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_, int index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(15, 8, 0, 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          decoration: BoxDecoration(),
                          height: 170,
                          width: 260,
                          child: Image.asset(
                            image[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Divider(
              thickness: .7,
              height: 8,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                top: 13,
              ),
              child: Text(
                "Order all your building material online at best prices",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, _createRoute(0));
              },
              child: Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    trailing: Icon(
                      Icons.navigate_next,
                      size: 40,
                      color: Colors.red.shade900,
                    ),
                    title: Text("OPC & PPC Cement",
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Text("Easy and fast on site delivery!"),
                    leading: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "images/truck.png",
                          height: 60,
                          width: 60,
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, _createRoute(1));
              },
              child: Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    trailing: Icon(
                      Icons.navigate_next,
                      size: 40,
                      color: Colors.red.shade900,
                    ),
                    title: Text("TMT Steel Bars",
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Text("Easy and fast delivery!"),
                    leading: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "images/pillar.png",
                          height: 40,
                          width: 60,
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, _createRoute(2));
              },
              child: Card(
                color: Colors.white,
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    trailing: Icon(
                      Icons.navigate_next,
                      size: 40,
                      color: Colors.red.shade900,
                    ),
                    title: Text("Bricks & Blocks",
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Text("All grades of bricks available"),
                    leading: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "images/brick.png",
                          height: 60,
                          width: 60,
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, _createRoute(3));
              },
              child: Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    trailing: Icon(
                      Icons.navigate_next,
                      size: 40,
                      color: Colors.red.shade900,
                    ),
                    title: Text(
                      "Sand | Baalu",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("Easy and fast delivery"),
                    leading: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "images/sand.png",
                          height: 60,
                          width: 60,
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, _createRoute(4));
              },
              child: Card(
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    trailing: Icon(
                      Icons.navigate_next,
                      size: 40,
                      color: Colors.red.shade900,
                    ),
                    title: Text(
                      "Stone Chips | Gitti",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    subtitle: Text("All grades available"),
                    leading: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "images/gravel.png",
                          height: 60,
                          width: 60,
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Text(
                "Assistant",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 15, right: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xfffde4c5),
                    borderRadius: BorderRadius.circular(6)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 12, 15, 10),
                  child: Row(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Your Assistant",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600),
                          ),
                          Text("Just contact us if you have any queries.")
                        ],
                      ),
                      Expanded(
                        child: Icon(
                          Icons.nature_people,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
          ],
        ),
      ),
    );
  }
}

Route _createRoute(int route) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) {
      if (route == 0) {
        return CementType();
      } else if (route == 1) {
        return BarSelection();
      } else if (route == 2) {
        return BrickSelection();
      } else if (route == 3) {
        return SandSelection();
      } else
        return StoneSelection();
    },
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
