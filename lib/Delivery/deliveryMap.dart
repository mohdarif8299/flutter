import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:internship_hb/Delivery/deliveryGlobal.dart';
import 'package:internship_hb/Delivery/selectDestination.dart';
import 'package:internship_hb/Delivery/selectSource.dart';

class DeliveryMap extends StatefulWidget {
  @override
  _DeliveryMapState createState() => _DeliveryMapState();
}

class _DeliveryMapState extends State<DeliveryMap> {
  bool loading = true;
  Completer<GoogleMapController> _controller = Completer();
  Set<Polyline> _polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();
  String googleAPIKey = "AIzaSyAFOwZizGaQynTWmFxHDgpTBgdBW0nwob8";

  LatLng _center = LatLng(sourceLat, sourceLng);

  @override
  void dispose() {
    destLat = 0.0;
    sourceStr = "Enter Location";
    destStr = "Enter Destination";
    super.dispose();
  }

  @override
  void initState() {
    Marker marker = Marker(
        draggable: true,
        markerId: MarkerId("source"),
        position: LatLng(sourceLat, sourceLng),
        infoWindow: InfoWindow(
          title: "Pickup",
        ));
    setState(() {
      markers[MarkerId("source")] = marker;
    });
    if (destLng != 0.0) {
      Marker markerTwo = Marker(
          draggable: true,
          markerId: MarkerId("source2"),
          position: LatLng(destLat, destLng),
          infoWindow: InfoWindow(
            title: "Drop",
          ));
      setState(() {
        markers[MarkerId("source2")] = markerTwo;
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Container(
              child: GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 12.0,
                ),
                polylines: _polylines,
                myLocationEnabled: true,
                onMapCreated: onMapCreated,
                markers: Set<Marker>.of(markers.values),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red.shade900,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(8),
                        topLeft: Radius.circular(8)),
                  ),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 40,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(12.0, 6, 12, 6),
                    child: Text(
                      "Prices starting at Flat ₹ 10 per km !",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Hero(
                  tag: "source",
                  child: Material(
                    type: MaterialType.transparency,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25)),
                      ),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 0, 12, 8),
                            child: InkWell(
                              onTap: () {
                                var router = new MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return SelectSource();
                                });
                                Navigator.push(context, router);
                              },
                              child: Container(
                                height: 60,
                                child: Card(
                                  color: Colors.grey.shade100,
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        18.0, 0, 12, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 5,
                                          backgroundColor: Colors.green,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Text(
                                              sourceStr,
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 12),
                            child: Container(
                              height: 60,
                              child: InkWell(
                                onTap: () {
                                  var router = new MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return SelectDestination();
                                  });
                                  Navigator.push(context, router);
                                },
                                child: Card(
                                  color: Colors.grey.shade50,
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(50.0)),
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        18.0, 0, 12, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 5,
                                          backgroundColor: Colors.red,
                                        ),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: Text(
                                              destStr,
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          destLat != 0.0
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 10, right: 10, bottom: 30),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Colors.red.shade700),
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              18, 20, 18, 20),
                                          child: Container(
                                              child: Text(
                                            "Confirm Booking",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w700),
                                          )),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              : Container(
                                  child: null,
                                )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
    if (destLat != 0.0) {
      setPolylines();
    }
  }

  setPolylines() async {
    List<PointLatLng> result = await polylinePoints?.getRouteBetweenCoordinates(
        googleAPIKey, sourceLat, sourceLng, destLat, destLng);
    if (result.isNotEmpty) {
      // loop through all PointLatLng points and convert them
      // to a list of LatLng, required by the Polyline
      result.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    setState(() {
      // create a Polyline instance
      // with an id, an RGB color and the list of LatLng pairs
      Polyline polyline = Polyline(
          polylineId: PolylineId("poly"),
          color: Color.fromARGB(255, 40, 122, 198),
          points: polylineCoordinates);

      // add the constructed polyline as a set of points
      // to the polyline set, which will eventually
      // end up showing up on the map
      _polylines.add(polyline);
    });
  }
}
