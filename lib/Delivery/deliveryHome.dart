import 'package:flutter/material.dart';
import 'package:internship_hb/Delivery/pick_drop/pick_drop_home.dart';
import 'package:internship_hb/Delivery/selectTruck.dart';

class DeliveryHome extends StatefulWidget {
  @override
  _DeliveryHomeState createState() => _DeliveryHomeState();
}

class _DeliveryHomeState extends State<DeliveryHome> {
  List<String> image = [
    "images/hm1.png",
    "images/hm2.png",
    "images/image1.png",
    "images/image2.png"
  ];
  List<String> categoryImage = [
    "images/shop.png",
    "images/grocery.png",
    "images/home.png",
    "images/delivery.png",
    "images/mobile.png",
    "images/lap.png",
    "images/home.png",
    "images/mobile.png",
    "images/lap.png",
    "images/home.png",
    "images/mobile.png",
    "images/mobile.png",
    "images/lap.png",
    "images/home.png",
  ];
  List<String> category = [
    "Pick and Drop",
    "Tempo Book For Travel",
    "Dala Auto",
    "Chota Hathi",
    "TATA 407",
    "Mini Truck",
    "E-Rikshaw",
    "Dala Auto",
    "Chota Hathi",
    "TATA 407",
    "Dala Auto",
    "Chota Hathi",
    "TATA 407",
    "Dala Auto",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 1, title: Text("Delivery Services")),
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
                "Delivery and transport services made easy!",
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
                    title: Text("Pick & Drop",
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Text("Easy and fast quick delivery!"),
                    leading: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "images/shop.png",
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
                    title: Text("Tempos & Trucks",
                        style: TextStyle(fontWeight: FontWeight.w500)),
                    subtitle: Text("Easy and fast quick delivery!"),
                    leading: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          "images/truck.png",
                          color: Colors.red.shade800,
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
            Card(
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
                  title: Text("E - Rickshaw",
                      style: TextStyle(fontWeight: FontWeight.w500)),
                  subtitle: Text("Easy and fast quick delivery!"),
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "images/shop.png",
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
            Card(
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
                    "Pick & Drop",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text("Easy and fast quick delivery!"),
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        "images/shop.png",
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
                          Text("Just enter location and task & get it done.")
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

Route _createRoute(int page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) {
      if (page == 0) {
        return PickupHome();
      }
      if (page == 1) {
        return SelectTruck();
      } else
        return null;
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
