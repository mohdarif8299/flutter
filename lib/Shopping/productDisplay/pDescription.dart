import 'package:flutter/material.dart';

class ProductDesc extends StatefulWidget {
  @override
  _ProductDescState createState() => _ProductDescState();
}

class _ProductDescState extends State<ProductDesc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Description"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Product Description",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vitae arcu cursus, mattis metus eget, tristique ipsum. Phasellus scelerisque, ex at lacinia lacinia, mi nisi commodo ipsum, eget convallis dui mauris a turpis. Phasellus tempus elementum tortor, in ultrices dui elementum a."),
                Divider(
                  thickness: .7,
                  height: 30,
                ),
                Text(
                  "Features",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                SizedBox(
                  height: 5,
                ),
                Text(
                    "Duis vitae arcu cursus, mattis metus eget, tristique ipsum."),
                SizedBox(
                  height: 5,
                ),
                Text(
                    "Integer in consequat nisl, quis dictum mauris."),
                SizedBox(
                  height: 5,
                ),
                Text(
                    "Praesent at urna nec eros finibus egestas"),
                SizedBox(
                  height: 5,
                ),
                Text(
                    "Warranty : 6 months"),
                SizedBox(
                  height: 5,
                ),
                Text(
                    "Processor : 2.5 GHz"),
                SizedBox(
                  height: 5,
                ),
                Text(
                    "Praesent at urna nec eros finibus egestas"),
                Divider(
                  thickness: .7,
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
