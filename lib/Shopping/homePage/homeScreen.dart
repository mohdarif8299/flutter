import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:internship_hb/Shopping/categories/laptopCat.dart';
import 'package:internship_hb/Shopping/categories/printerCat.dart';
import 'package:internship_hb/Shopping/homePage/drawer.dart';
import 'package:internship_hb/Shopping/homePage/sectionCard.dart';

import 'searchBar.dart';

class ShoppingHome extends StatefulWidget {
  @override
  _ShoppingHomeState createState() => _ShoppingHomeState();
}

class _ShoppingHomeState extends State<ShoppingHome> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  List<String> bannerImage = [
    "images/shop/banner.png",
    "images/shop/banner2.png"
  ];
  List<String> categoryImg = [
    "images/shop/icons/lapIcon.png",
    "images/shop/icons/printIcon.png",
    "images/shop/icons/storeIcon.png",
    "images/shop/icons/softIcon.png",
    "images/shop/icons/inIcon.png",
    "images/shop/icons/sdIcon.png",
    "images/shop/icons/lapIcon.png",
    "images/shop/icons/printIcon.png",
  ];
  List<String> categoryName = [
    "Laptop",
    "Printer",
    "Storage",
    "Software",
    "Insurance",
    "Datacards",
    "Laptop",
    "Printer",
    "Software"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: CustomDrawer(),
        key: _scaffoldKey,
        backgroundColor: Colors.red.shade600,
//
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: false,
                floating: true,
                title: MyAppBar(),
                titleSpacing: 0,
                backgroundColor: Colors.white,
                elevation: 1.0,
              ),
            ];
          },
          body: Center(
            child: Container(
              color: Colors.grey.shade100,
              child: Column(
                children: <Widget>[
                  MySearchBar(),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: <Widget>[
                        Container(
                          height: 60,
                          width: 60,
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 8,
                              itemBuilder: (_, int index) {
                                return InkWell(
                                  onTap: () {
                                    switch (index) {
                                      case 0:
                                        {
                                          var router = new MaterialPageRoute(
                                              builder: (BuildContext context) {
                                            return CategoryPage("Laptops");
                                          });
                                          Navigator.push(context, router);
                                        }
                                        break;
                                      case 1:
                                        {
                                          var router = new MaterialPageRoute(
                                              builder: (BuildContext context) {
                                            return Printers();
                                          });
                                          Navigator.push(context, router);
                                        }
                                        break;
                                      case 2:
                                        {
                                          var router = new MaterialPageRoute(
                                              builder: (BuildContext context) {
                                            return CategoryPage("Storage");
                                          });
                                          Navigator.push(context, router);
                                        }
                                        break;
                                      case 3:
                                        {
                                          var router = new MaterialPageRoute(
                                              builder: (BuildContext context) {
                                            return CategoryPage("Software");
                                          });
                                          Navigator.push(context, router);
                                        }
                                        break;
                                      case 4:
                                        {
                                          var router = new MaterialPageRoute(
                                              builder: (BuildContext context) {
                                            return CategoryPage("Insurance");
                                          });
                                          Navigator.push(context, router);
                                        }
                                        break;
                                      case 5:
                                        {
                                          var router = new MaterialPageRoute(
                                              builder: (BuildContext context) {
                                            return CategoryPage("Data Cards");
                                          });
                                          Navigator.push(context, router);
                                        }
                                        break;
                                      case 6:
                                        {
                                          var router = new MaterialPageRoute(
                                              builder: (BuildContext context) {
                                            return CategoryPage("Laptops");
                                          });
                                          Navigator.push(context, router);
                                        }
                                        break;
                                      case 7:
                                        {
                                          var router = new MaterialPageRoute(
                                              builder: (BuildContext context) {
                                            return CategoryPage("Printers");
                                          });
                                          Navigator.push(context, router);
                                        }
                                        break;
                                    }
                                  },
                                  child: Container(
                                    width: 65,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset(
                                          categoryImg[index],
                                          height: 32,
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          categoryName[index],
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          child: Swiper(
                            autoplay: true,
                            duration: 1000,
                            containerWidth: MediaQuery.of(context).size.width,
                            itemBuilder: (BuildContext context, int index) {
                              return Image.asset(
                                bannerImage[index],
                                fit: BoxFit.fill,
                              );
                            },
                            itemCount: 2,
                            viewportFraction: 1,
                            scale: .8,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        SmallBannerAd(),
                        SizedBox(
                          height: 10,
                        ),

                        SectionCard(
                            "images/shop/back.jpg",
                            "TOP SELECTIONS",
                            Colors.white,
                            Colors.blue.shade600,
                            Colors.white,
                            1),
                        /////////////////////////////////////////////
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "images/shop/ad.png",
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SectionCard(
                            "images/shop/back2.jpg",
                            "SUPER HIT EDHIK DEALS",
                            Colors.grey.shade900,
                            Colors.grey.shade600,
                            Colors.white,
                            2),

                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "images/shop/ad2.png",
                          height: 150,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SectionCard(
                            "images/shop/back3.jpg",
                            "DAILY DEALS",
                            Colors.black,
                            Colors.yellow.shade900,
                            Colors.white,
                            3),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          }),
      backgroundColor: Colors.red.shade600,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "EDHIK",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          Column(
            children: <Widget>[
              Image.asset(
                "images/gift.png",
                color: Colors.white,
                height: 20,
              ),
            ],
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.close,
              size: 25,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ],
      elevation: 0,
    );
  }
}

class SmallBannerAd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade600,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 20, 0, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Deal of the day",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "UPTO 50% OFF",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "55m : 20s Left ",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Expanded(
              child: Image.asset(
            "images/op7p.png",
            height: 80,
          )),
          SizedBox(
            width: 30,
          )
        ],
      ),
    );
  }
}
