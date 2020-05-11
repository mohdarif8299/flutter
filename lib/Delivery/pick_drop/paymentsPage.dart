import 'package:flutter/material.dart';

class PickUpPayment extends StatefulWidget {
  @override
  _PickUpPaymentState createState() => _PickUpPaymentState();
}

class _PickUpPaymentState extends State<PickUpPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "Select payment method",
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerLeft,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Text(
                "Wallets",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,4,10,4),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(
                  "images/pickAndDrop/paywallet.png",
                ),
              ),
              title: Text("Paytm",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              trailing: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Text(
                "Google Pay",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,4,10,4),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(
                  "images/pickAndDrop/paywallet.png",
                ),
              ),
              title: Text("Google Pay",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              trailing: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
              ),
            ),
          ),  Container(
            alignment: Alignment.centerLeft,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Text(
                "Pay Pal",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,4,10,4),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(
                  "images/pickAndDrop/paywallet.png",
                ),
              ),
              title: Text("Pay Pal",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              trailing: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Text(
                "UPI",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,4,10,4),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: AssetImage(
                  "images/pickAndDrop/paywallet.png",
                ),
              ),
              title: Text("UPI",style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400)),
              trailing: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
