import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
            height: 58,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20),
                ),
                color: Colors.redAccent),
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("My Orders", style: TextStyle(color: Colors.white, fontSize: 20),),
              ],
            )),
      ),
    );
  }
}
