import 'package:flutter/material.dart';

import '../UserPages/userAccount.dart';
import '../categories/laptopCat.dart';
import '../categories/printerCat.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              color: Colors.red.shade700,
              height: 60,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.home,
                          size: 26,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 18),
                      ),
                      Expanded(
                          child: Container(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          "images/shop.png",
                          color: Colors.white,
                          height: 25,
                          width: 25,
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 4,
              color: Colors.grey.shade300,
              width: double.maxFinite,
            ),
            ListTile(
              title: Text(
                "Categories",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            Divider(
              height: 0,
            ),
            InkWell(
              onTap: () {
                var router =
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return CategoryPage("Electronics");
                });
                Navigator.of(context).pop();
                Navigator.push(context, router);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                      height: 25,
                    ),
                    Text("Electronics")
                  ],
                ),
              ),
            ),
            Divider(
              height: 0,
            ),
            InkWell(
              onTap: () {
                var router =
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return CategoryPage("Laptops");
                });
                Navigator.of(context).pop();
                Navigator.push(context, router);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                      height: 25,
                    ),
                    Text("Laptops")
                  ],
                ),
              ),
            ),
            Divider(
              height: 0,
            ),
            InkWell(
              onTap: () {
                var router =
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return CategoryPage("Mobiles & Accessories");
                });
                Navigator.of(context).pop();
                Navigator.push(context, router);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                      height: 25,
                    ),
                    Text("Mobiles & Accessories")
                  ],
                ),
              ),
            ),
            Divider(
              height: 0,
            ),
            InkWell(
              onTap: () {
                var router =
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return CategoryPage("Tvs & Appliances");
                });
                Navigator.of(context).pop();
                Navigator.push(context, router);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                      height: 25,
                    ),
                    Text("TVs & Appliances")
                  ],
                ),
              ),
            ),
            Divider(
              height: 0,
            ),
            InkWell(
              onTap: () {
                var router =
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return Printers();
                });
                Navigator.of(context).pop();
                Navigator.push(context, router);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                      height: 25,
                    ),
                    Text("Printers")
                  ],
                ),
              ),
            ),
            Divider(
              height: 0,
            ),
            InkWell(
              onTap: () {
                var router =
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return CategoryPage("Electrical Appliances");
                });
                Navigator.of(context).pop();
                Navigator.push(context, router);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                      height: 25,
                    ),
                    Text("Electrical Appliances")
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 4,
              color: Colors.grey.shade200,
              width: double.maxFinite,
            ),
            ListTile(
              title: Text(
                "User Profile",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              height: 0,
            ),
            InkWell(
              onTap: () {
                var router =
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return UserAccount();
                });
                Navigator.of(context).pop();
                Navigator.push(context, router);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      "images/shop/user.png",
                      height: 28,
                      width: 28,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text("My Account")
                  ],
                ),
              ),
            ),
            Divider(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    "images/shop/product.png",
                    height: 28,
                    width: 28,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("My Orders")
                ],
              ),
            ),
            Divider(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Image.asset(
                    "images/shop/wishlist.png",
                    height: 28,
                    width: 28,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("My Wishlist")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
