import 'package:flutter/material.dart';
import 'package:flutter_google_places/flutter_google_places.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_webservice/places.dart';
import 'package:dio/dio.dart';
import 'package:internship_hb/Delivery/pick_drop/pickUpGlobal.dart';


GoogleMapsPlaces _places = GoogleMapsPlaces(apiKey: kGoogleApiKey);
const kGoogleApiKey = "AIzaSyAFOwZizGaQynTWmFxHDgpTBgdBW0nwob8";

class PickUpLocation extends StatefulWidget {
  @override
  _PickUpLocationState createState() => _PickUpLocationState();
}

class _PickUpLocationState extends State<PickUpLocation> {
  String _heading;
  void getLocationResults(String input) async {
    if (input.isEmpty) {
      setState(() {
        _heading = "Suggestions";
      });
      return;
    }
    String baseURL = 'https://maps.googleapis.com/maps/api/place/autocomplete/json';
    String type = '(regions)';
    // TODO Add session token

    String request = '$baseURL?input=$input&key=$kGoogleApiKey&type=$type';
    Response response = await Dio().get(request);
    print(response);
  }
  TextEditingController location= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
        "Select Pickup location", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 4, 18, 12),
              child: Container(
                height: 40,
                color: Colors.grey.shade100,
                child: Container(
                  margin: EdgeInsets.only(left: 12),
                  child: TextField(
                    controller: location,
                    onChanged: (text){
                      getLocationResults(text);
                    },
                    decoration: InputDecoration.collapsed(
                        hintText: "Search", fillColor: Colors.grey),
                  ),
                ),
              ),
            ),
          ),

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
                         pickupAdd = "Laxmi Nagar, East Delhi";

                        });

                        Navigator.pop(context);

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
                          pickupAdd = "India Gate, New Delhi";

                        });

                        Navigator.pop(context);

//                        setState(() {
//                          sourceStr = "India Gate, New Delhi";
//                          sourceLat = 28.6129;
//                          sourceLng = 77.2295;
//                        });
//                        var router = new MaterialPageRoute(
//                            builder: (BuildContext context) {
//                              return DeliveryMap();
//                            });
//                        Navigator.pop(context);
//                        Navigator.pushReplacement(context, router);
                      },
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, bottom: 10, top: 5),
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
                          pickupAdd = "Indrapuram, Ghaziabad";

                        });

                        Navigator.pop(context);

//                        setState(() {
//
//                        });
//                        var router = new MaterialPageRoute(
//                            builder: (BuildContext context) {
//                              return DeliveryMap();
//                            });
//                        Navigator.pop(context);
//                        Navigator.pushReplacement(context, router);
                      },
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 15.0, bottom: 10, top: 5),
                            child: Text(
                              "Indrapuram",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(),
                    SizedBox(height: 5,),
                    InkWell(
                      onTap: () {
//                        sourceStr = "Hold Pin to drag";
//                        Navigator.pop(context);
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
    );
  }

}
