import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:internship_hb/Delivery/deliveryGlobal.dart';
import 'package:internship_hb/Delivery/deliveryHome.dart';
import 'package:internship_hb/HomeServices/homeScreen.dart';
import 'package:internship_hb/SellPhone/homeScreen.dart';
import 'package:internship_hb/Shopping/homePage/homeScreen.dart';

import 'ConstructionMat/homeScreen.dart';
import 'SellLaptop/homeScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Position position; //  to extract current location of user
  List<String> image = [
    // images used in banner
    "images/image1.png",
    "images/image2.png",
    "images/image1.png",
    "images/image2.png"
  ];
  List<String> categoryImage = [
    // images used for different section's icons
    "images/shop.png",
    "images/crane.png",
    "images/home.png",
    "images/delivery.png",
    "images/mobile.png",
    "images/laptop.png",
  ];
  List<String> category = [
    // name of different sections
    "Shopping",
    "Construction",
    "Home Services",
    "Delivery",
    "Sell Your Phone",
    "Sell your Laptop"
  ];

  @override
  void initState() {
    super.initState();
    loadLocation(); // load current location of user
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Colors.red.shade700,
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Your City",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
                Text("Delhi",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
              ],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Image.asset(
                      "images/gift.png",
                      color: Colors.red,
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0, left: 5),
                      child: Text(
                        "Offers",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              height: 185,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          decoration: BoxDecoration(),
                          height: 170,
                          width: 280,
                          child: Image.asset(
                            image[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              color: Colors.blue.withOpacity(.7),
              height: 55,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset(
                    "images/wallet.png",
                    height: 40,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Refer to earn more discount!")
                ],
              ),
              width: double.maxFinite,
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Text(
                "Categories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 10, 15, 10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                elevation: 3,
                child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    // Create a grid with 2 columns. If you change the scrollDirection to
                    // horizontal, this produces 2 rows.
                    crossAxisCount: 3,
                    crossAxisSpacing: 1,
                    childAspectRatio: 1.2,
                    mainAxisSpacing: 1,
                    children: List.generate(6, (index) {
                      return InkWell(
                        onTap: () { // to navigate to selected page
                          if (index == 0) {
                            var router = new MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return ShoppingHome();
                            });
                            Navigator.push(context, router);
                          }

                          if (index == 1) {
                            var router = new MaterialPageRoute(
                                builder: (BuildContext context) {
                              return ConstructionHome();
                            });
                            Navigator.push(context, router);
                          }
                          if (index == 2) {
                            var router = new MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return HomeSrvMain();
                            });
                            Navigator.push(context, router);
                          }
                          if (index == 3) {
                            var router = new MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return DeliveryHome();
                            });
                            Navigator.push(context, router);
                          }

                          if (index == 4) {
                            var router = new MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return SellPhone();
                            });
                            Navigator.push(context, router);
                          }
                          if (index == 5) {
                            var router = new MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return SellLaptop();
                            });
                            Navigator.push(context, router);
                          }
                        },
                        child: Container(
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
                                categoryImage[index],
                                height: 35,
                                color: Colors.red.shade600,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                category[index],
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        )),
                      );
                    })),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                top: 20,
              ),
              child: Text(
                "Highlights",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "images/expert.png",
                        height: 65,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Gadget Expert",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8, bottom: 8),
                              color: Colors.black,
                              height: 1,
                              width: 30,
                            ),
                            Text(
                              "We are all about gadgets! Buy and Enjoy best prices",
                              softWrap: true,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 30),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "images/clock.png",
                        height: 65,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Hassle Free Service",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8, bottom: 8),
                              color: Colors.black,
                              height: 1,
                              width: 30,
                            ),
                            Text(
                              "Super convenient, guaranteed service from booking to delivery",
                              softWrap: true,
                              style: TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 50, bottom: 10),
              child: Text(
                "User Stories",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 240,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (_, int index) {
                      return Container(
                        width: 220,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 12, 8, 8),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 24,
                                      backgroundImage:
                                          AssetImage("images/pic.jpg"),
                                    ),
                                    SizedBox(
                                      width: 12,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Aditya Gautam",
                                          style: TextStyle(
                                              fontSize: 14.5,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text("Delhi",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500))
                                      ],
                                    ),
                                    SizedBox(
                                      width: 15,
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 12),
                                  child: Text(
                                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                                    softWrap: true,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.all(4),
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Bought : OnePlus 7 Pro",
                                      style:
                                          TextStyle(color: Color(0xff41c8b7)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 25,
            )
          ],
        ),
      ),
    );
  }

  void loadLocation() async {
    position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      sourceLat = position.latitude;
      sourceLng = position.longitude;
    });
  }
}
