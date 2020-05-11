import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:internship_hb/Shopping/productDisplay/pDescription.dart';
import 'package:internship_hb/Shopping/productDisplay/productZoom.dart';

class ProductDisplay extends StatefulWidget {
  @override
  _ProductDisplayState createState() => _ProductDisplayState();
}

class _ProductDisplayState extends State<ProductDisplay> {
  ScrollController _controller;
  List<String> productImage = [
    "images/shop/mouse.png",
    "images/shop/mouse2.png",
    "images/shop/lap4.png",
    "images/shop/mouse.png",
    "images/shop/mouse2.png",
    "images/shop/lap4.png",
  ];
  int currentImg = 0;
  bool wait = false;
  var swipeControl = SwiperController();

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  height: 380,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Swiper(
                      curve: Curves.linear,
                      controller: swipeControl,
                      onIndexChanged: (index) {
                        setState(() {
                          if (!wait) {
                            currentImg = index;
                          }
                        });
                      },
                      containerWidth: MediaQuery.of(context).size.width,
                      itemBuilder: (BuildContext context, int index) {
                        return Material(
                          type: MaterialType.transparency,
                          child: InkWell(
                            onTap: () {
                              var router = new MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return ZoomDisplay(index);
                              });
                              Navigator.push(context, router);
                            },
                            child: Image.asset(
                              productImage[index],
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                      itemCount: 6,
                      viewportFraction: .97,
                      scale: .8,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 90,
                  child: ListView.builder(
                      controller: _controller,
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (_, int i) {
                        return InkWell(
                          onTap: () {
                            wait = true;
                            Timer(Duration(milliseconds: 300), () {
                              wait = false;
                            });
                            setState(() {
                              swipeControl.move(
                                i,
                              );
                              currentImg = i;
                            });
                          },
                          child: Container(
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    width: 2,
                                    color: currentImg == i
                                        ? Colors.red.shade700
                                        : Colors.grey.shade200)),
                            height: 90,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  productImage[i],
                                  height: 50,
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 10, 15, 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Product Name",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        Text("Type",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: Colors.orange.shade700,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 2, 8, 2),
                            child: Text(
                              "Product Id : 07",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Brand",
                            style: TextStyle(
                                fontSize: 14, color: Colors.green.shade700)),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text("₹ 15,000",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.red.shade700,
                                    fontWeight: FontWeight.w700)),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "₹ 16999/- ",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              " 6% off",
                              style: TextStyle(color: Colors.green.shade800),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: Colors.grey.shade300,
                              child: Icon(
                                Icons.train,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Fast Delivery")
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 1,
                          width: double.maxFinite,
                          color: Colors.grey.shade100,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 0, top: 15, bottom: 15),
                          child: Text("Highlights"),
                        ),
                        Text(
                            "1. Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            "2. Duis vitae arcu cursus, mattis metus eget, tristique ipsum."),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                            "3. Praesent volutpat pulvinar nulla sit amet vehicula."),
                        SizedBox(
                          height: 5,
                        ),
                        Text("4. Praesent at urna nec eros finibus egestas."),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 1,
                          width: double.maxFinite,
                          color: Colors.grey.shade100,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        InkWell(
                          onTap: (){
                            var router = new MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return ProductDesc();
                                });
                            Navigator.push(context, router);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "All Details",
                                style: TextStyle(fontSize: 17),
                              ),
                              Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 1,
                          width: double.maxFinite,
                          color: Colors.grey.shade100,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.share),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Share"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 1,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 18, 0, 0),
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("SIMILAR PRODUCTS"),
                                  Container(
                                    color: Colors.red.shade600,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8.0, 4, 8, 4),
                                      child: Text(
                                        "view all",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        right: BorderSide(
                                            width: 0.3,
                                            color: Colors.grey.shade400),
                                        top: BorderSide(
                                            width: 0.3,
                                            color: Colors.grey.shade400),
                                      ),
                                    ),
                                    height: 320,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Image.asset(
                                            "images/shop/lap4.png",
                                            height: 170,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Text(
                                              "Cell Phone Holder - Flexible...."),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              "₹ 169/- ",
                                              style: TextStyle(
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
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        height: 160,
                                        decoration: BoxDecoration(
                                          border: Border(
                                              top: BorderSide(
                                                  width: 0.3,
                                                  color: Colors.grey.shade400),
                                              left: BorderSide(
                                                  width: 0.3,
                                                  color: Colors.grey.shade400)),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset(
                                              "images/shop/lap2.png",
                                              height: 70,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      8.0, 10, 8, 5),
                                              child: Text(
                                                "Cell Phone Holder - Flexible....",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "₹ 169/- ",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color:
                                                          Colors.red.shade800),
                                                ),
                                                Text(
                                                  " 60% off",
                                                  style: TextStyle(
                                                      color: Colors
                                                          .green.shade800),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 160,
                                        decoration: BoxDecoration(
                                          border: Border(
                                              top: BorderSide(
                                                  width: 0.3,
                                                  color: Colors.grey.shade400),
                                              left: BorderSide(
                                                  width: 0.3,
                                                  color: Colors.grey.shade400)),
                                        ),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Image.asset(
                                              "images/shop/lap2.png",
                                              height: 70,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      8.0, 10, 8, 5),
                                              child: Text(
                                                "Cell Phone Holder - Flexible....",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  "₹ 169/- ",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color:
                                                          Colors.red.shade800),
                                                ),
                                                Text(
                                                  " 60% off",
                                                  style: TextStyle(
                                                      color: Colors
                                                          .green.shade800),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            border: Border.all(color: Colors.grey.shade300)),
                        height: 50,
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ))),
                Expanded(
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.orange.shade600,
                            border: Border.all(color: Colors.orange.shade900)),
                        height: 50,
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        )))
              ],
            ),
          )
        ],
      ),
    );
  }
}
