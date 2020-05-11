import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internship_hb/Shopping/productDisplay/productDisplay.dart';
import 'categories/sortingPage.dart';

class TopSelections extends StatefulWidget {
  @override
  _TopSelectionsState createState() => _TopSelectionsState();
}

class _TopSelectionsState extends State<TopSelections> {
  MediaQueryData data;
  List<String> laptopImg = [
    "images/shop/lap.png",
    "images/shop/lap2.png",
    "images/shop/lap3.png",
    "images/shop/lap4.png",
    "images/shop/lap5.png",
    "images/shop/lap6.png",
    "images/shop/lap.png",
    "images/shop/lap2.png",
    "images/shop/lap3.png",
    "images/shop/lap4.png",
    "images/shop/lap5.png",
    "images/shop/lap6.png"
  ];
  List<String> lapNames = [
    "HP Pavilion",
    "Dell Inspiron",
    "Toshiba T-1909",
    "VAIO V-4",
    "HP Elitebook 13'",
    "HP Pavilion",
    "Dell Inspiron",
    "Toshiba T-1909",
    "VAIO V-4",
    "HP Elitebook 13'",
    "VAIO V-4",
    "HP Elitebook 13'"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Text("Top Selections"),
          actions: <Widget>[
            Icon(
              Icons.search,
            ),
            SizedBox(
              width: 20,
            ),
            IconButton(
              icon: Icon(Icons.sort),
              onPressed: () {
                var router =
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return SortingPage();
                });
                Navigator.push(context, router);
              },
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: laptopImg.length,
          itemBuilder: (_, int index) {
            return index == 0
                ? Padding(
                  padding: const EdgeInsets.fromLTRB(4,0,4,0),
                  child: Card(
                    color: Colors.red.shade600,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 20, 0, 20),
                        child: Text(
                          "Hand picked items, just for you !",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                    ),
                )
                : InkWell(
                    onTap: () {
                      var router = new MaterialPageRoute(
                          builder: (BuildContext context) {
                        return ProductDisplay();
                      });
                      Navigator.push(context, router);
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                            height: 120,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border(
//                      right: index % 2 == 0
//                          ? BorderSide(width: 0.2, color: Colors.black)
//                          : BorderSide(width: 0.0, color: Colors.transparent),
                                    ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset(
                                      laptopImg[index],
                                      height: 100,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          lapNames[index],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 10, 0, 5),
                                          child: Text(
                                            "Cell Phone Holder - Flexible....",
                                            style: TextStyle(fontSize: 13),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "₹ 169/- ",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors.red.shade800),
                                            ),
                                            Text(
                                              " 60% off",
                                              style: TextStyle(
                                                  color: Colors.green.shade800),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ),
                    ),
                  );
          },
        ));
  }
}
