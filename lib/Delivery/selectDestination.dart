import 'package:flutter/material.dart';

import 'deliveryGlobal.dart';
import 'deliveryMap.dart';

class SelectDestination extends StatefulWidget {
  @override
  _SelectDestinationState createState() => _SelectDestinationState();
}

class _SelectDestinationState extends State<SelectDestination> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "source",
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: TextField(
            decoration:
                new InputDecoration.collapsed(hintText: "Select drop location"),
          ),
        ),
        body:ListView(
          shrinkWrap: true,
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          setState(() {
                            destStr = "Laxmi Nagar, East Delhi";
                          destLat = 28.636589;
                           destLng = 77.274315;
                          });
                          var router = new MaterialPageRoute(
                              builder: (BuildContext context) {
                                return DeliveryMap();
                              });
                          Navigator.pop(context);
                          Navigator.pushReplacement(context, router);
                        },
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 15.0, bottom: 10),
                              child: Text(
                                "Laxmi Nagar",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            destStr = "India Gate, New Delhi";
                            destLat = 28.6129;
                            destLng = 77.2295;
                          });
                          var router = new MaterialPageRoute(
                              builder: (BuildContext context) {
                                return DeliveryMap();
                              });
                          Navigator.pop(context);
                          Navigator.pushReplacement(context, router);
                        },
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 15.0, bottom: 10),
                              child: Text(
                                "India Gate",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            destStr = "Indrapuram, Ghaziabad, UP";
                            destLat = 28.6460;
                           destLng = 77.3695;
                          });
                          var router = new MaterialPageRoute(
                              builder: (BuildContext context) {
                                return DeliveryMap();
                              });
                          Navigator.pop(context);
                          Navigator.pushReplacement(context, router);
                        },
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 15.0, bottom: 10),
                              child: Text(
                                "Indrapuram",
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      InkWell(
                        onTap: () {
                          destStr = "Hold Pin to drag";
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.map,
                              color: Colors.red.shade700,
                              size: 30,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Select from Map",
                              style: TextStyle(fontSize: 16),
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
    );
  }
}
