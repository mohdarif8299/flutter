import 'package:flutter/material.dart';
import 'package:internship_hb/Delivery/deliveryMap.dart';

class SelectTruck extends StatefulWidget {
  @override
  _SelectTruckState createState() => _SelectTruckState();
}

class _SelectTruckState extends State<SelectTruck> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text("Tempos & Trucks"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: InkWell(
              onTap: () {
                var router =
                new MaterialPageRoute(builder: (BuildContext context) {
                  return DeliveryMap();
                });
                Navigator.push(context, router);
              },
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(12),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("images/truck.png"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Chotha Hathi",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Divider(
            height: 0,
            indent: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: InkWell(
              onTap: () {
                var router =
                new MaterialPageRoute(builder: (BuildContext context) {
                  return DeliveryMap();
                });
                Navigator.push(context, router);
              },
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(12),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("images/truck.png"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "TATA 407",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Divider(
            height: 0,
            indent: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: InkWell(
              onTap: () {
                var router =
                new MaterialPageRoute(builder: (BuildContext context) {
                  return DeliveryMap();
                });
                Navigator.push(context, router);
              },
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(12),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("images/truck.png"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Mini Truck",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Divider(
            height: 0,
            indent: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: InkWell(
              onTap: () {
                var router =
                new MaterialPageRoute(builder: (BuildContext context) {
                  return DeliveryMap();
                });
                Navigator.push(context, router);
              },
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(12),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("images/truck.png"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Dala Auto",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Divider(
            height: 0,
            indent: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: InkWell(
              onTap: () {
                var router =
                new MaterialPageRoute(builder: (BuildContext context) {
                  return DeliveryMap();
                });
                Navigator.push(context, router);
              },
              child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(12),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage("images/truck.png"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "TATA Ace",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          Divider(
            height: 0,
            indent: 120,
          )
        ],
      ),
    );
  }
}
