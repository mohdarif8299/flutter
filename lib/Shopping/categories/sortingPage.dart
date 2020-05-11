import 'package:flutter/material.dart';

class SortingPage extends StatefulWidget {
  @override
  _SortingPageState createState() => _SortingPageState();
}

class _SortingPageState extends State<SortingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sort Products"),
        elevation: 1,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Sort by",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Prices",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 18),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Radio(
                                            value: null,
                                            groupValue: null,
                                            onChanged: null),
                                        Text("Low to High")
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Radio(
                                            value: null,
                                            groupValue: null,
                                            onChanged: null),
                                        Text("High to Low")
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "Discounts",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 18),
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Radio(
                                            value: null,
                                            groupValue: null,
                                            onChanged: null),
                                        Text("Low to High")
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Radio(
                                            value: null,
                                            groupValue: null,
                                            onChanged: null),
                                        Text("High to Low")
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 50,
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              border: Border.all(color: Colors.grey.shade300)),
                          height: 50,
                          child: Text(
                            "Clear All",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ))),
                  Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.orange.shade600,
                              border:
                                  Border.all(color: Colors.orange.shade900)),
                          height: 50,
                          child: Text(
                            "Apply",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 15),
                          )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
