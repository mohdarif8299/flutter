import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:internship_hb/Delivery/deliveryMap.dart';

import 'deliveryGlobal.dart';

class SelectSource extends StatefulWidget {
  @override
  _SelectSourceState createState() => _SelectSourceState();
}

class _SelectSourceState extends State<SelectSource> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "source",
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: TextField(
            decoration: new InputDecoration.collapsed(
                hintText: "Select Pickup location"),
          ),
        ),
        body: ListView(
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
                            sourceStr = "Laxmi Nagar, East Delhi";
                            sourceLat = 28.636589;
                            sourceLng = 77.274315;
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
                            sourceStr = "India Gate, New Delhi";
                            sourceLat = 28.6129;
                            sourceLng = 77.2295;
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
                            sourceStr = "Indrapuram, Ghaziabad, UP";
                            sourceLat = 28.6460;
                            sourceLng = 77.3695;
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
                          sourceStr = "Hold Pin to drag";
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
