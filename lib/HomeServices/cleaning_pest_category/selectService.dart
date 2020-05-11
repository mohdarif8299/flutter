import 'package:flutter/material.dart';
import 'package:internship_hb/HomeServices/cleaning_pest_category/bathroom_clean/homeScreen.dart';

class PestControl extends StatefulWidget {
  @override
  _PestControlState createState() => _PestControlState();
}

class _PestControlState extends State<PestControl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text("Cleaning and Pest Control"),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: InkWell(
              onTap: () {
                var router =
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return BathroomClean();
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
                            image: AssetImage("images/sofa.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Bathroom Deep Cleaning",
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
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("images/sofa.jpg"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Kitchen Deep Cleaning",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Divider(
            height: 0,
            indent: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("images/sofa.jpg"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Sofa Cleaning",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Divider(
            height: 0,
            indent: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("images/sofa.jpg"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Pest Control",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Divider(
            height: 0,
            indent: 120,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("images/sofa.jpg"),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Full House Deep Cleaning",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                )
              ],
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
