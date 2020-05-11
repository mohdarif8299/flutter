import 'package:flutter/material.dart';
import 'package:internship_hb/Delivery/pick_drop/paymentsPage.dart';
import 'package:internship_hb/Delivery/pick_drop/pickUpGlobal.dart';
import 'package:internship_hb/Delivery/pick_drop/pickUpLocation.dart';

import 'dropLocation.dart';

class PickupHome extends StatefulWidget {
  @override
  _PickupHomeState createState() => _PickupHomeState();
}

class _PickupHomeState extends State<PickupHome> {
  bool doc = false; // to show type of delivery item
  bool clothes = false; // to show type of delivery item
  bool showPrice = false; // to show type of delivery item
  bool food = false; // to show type of delivery item
  bool sports = false; // to show type of delivery item
  bool electronics = false; // to show type of delivery item

  @override
  void dispose() {
    super.dispose();
    pickupAdd = ""; //pickup address
    packageType = ""; //package type
    dropAdd = ""; //drop address
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Send Packages",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            Text(
              "On demand hyper delivery",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    var router =
                        new MaterialPageRoute(builder: (BuildContext context) {
                      return PickUpLocation();
                    });
                    Navigator.push(context, router);
                  },
                  child: Container(
                    child: ListTile(
                      leading: pickupAdd == ""
                          ? CircleAvatar(
                              backgroundColor: Colors.grey.shade300,
                              radius: 15,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white,
                              ),
                            )
                          : CircleAvatar(
                              backgroundColor: Colors.green.shade600,
                              radius: 15,
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                              )),
                      title: Row(
                        children: <Widget>[
                          Text(
                            "Pickup address",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 14),
                          ),
                          Text(
                            "*",
                            style: TextStyle(
                                fontSize: 13, color: Colors.red.shade700),
                          )
                        ],
                      ),
                      subtitle: Container(
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: pickupAdd == ""
                              ? BorderSide(
                                  width: 1, color: Colors.green.shade500)
                              : BorderSide(width: 1, color: Colors.grey),
                        )),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  pickupAdd == ""
                                      ? "Search pickup address"
                                      : pickupAdd,
                                  style: TextStyle(
                                      fontSize: 13.5, color: Colors.black),
                                ),
                              ),
                              Icon(Icons.search)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    if (pickupAdd != "") {
                      var router = new MaterialPageRoute(
                          builder: (BuildContext context) {
                        return DropLocation();
                      });
                      Navigator.push(context, router);
                    }
                  },
                  child: Container(
                    child: ListTile(
                      leading: dropAdd == ""
                          ? CircleAvatar(
                              backgroundColor: Colors.grey.shade300,
                              radius: 15,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white,
                              ),
                            )
                          : CircleAvatar(
                              backgroundColor: Colors.green.shade600,
                              radius: 15,
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                              )),
                      title: Row(
                        children: <Widget>[
                          Text(
                            "Drop address",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 14),
                          ),
                          Text(
                            "*",
                            style: TextStyle(
                                fontSize: 13, color: Colors.red.shade700),
                          )
                        ],
                      ),
                      subtitle: Container(
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: pickupAdd == ""
                              ? BorderSide(width: 1, color: Colors.grey)
                              : dropAdd == ""
                                  ? BorderSide(
                                      width: 1, color: Colors.green.shade500)
                                  : BorderSide(width: 1, color: Colors.grey),
                        )),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  pickupAdd == ""
                                      ? "Search drop address"
                                      : dropAdd,
                                  style: TextStyle(
                                      fontSize: 13.5, color: Colors.black),
                                ),
                              ),
                              Icon(Icons.search)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                InkWell(
                  onTap: () {
                    if (pickupAdd != "" && dropAdd != "") {
                      _packageTypeModalBottomSheet(context);
                    }
                  },
                  child: Container(
                    child: ListTile(
                      leading: packageType == ""
                          ? CircleAvatar(
                              backgroundColor: Colors.grey.shade300,
                              radius: 15,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Colors.white,
                              ),
                            )
                          : CircleAvatar(
                              backgroundColor: Colors.green.shade600,
                              radius: 15,
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                              )),
                      title: Row(
                        children: <Widget>[
                          Text(
                            "Select package contents",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 14),
                          ),
                          Text(
                            "*",
                            style: TextStyle(
                                fontSize: 13, color: Colors.red.shade700),
                          )
                        ],
                      ),
                      subtitle: Container(
                        decoration: BoxDecoration(
                            border: Border(
                          bottom: dropAdd == ""
                              ? BorderSide(width: 1, color: Colors.grey)
                              : packageType == ""
                                  ? BorderSide(
                                      width: 1, color: Colors.green.shade500)
                                  : BorderSide(width: 1, color: Colors.grey),
                        )),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  pickupAdd == ""
                                      ? "e.g. Food, Documents"
                                      : packageType,
                                  style: TextStyle(
                                      fontSize: 13.5, color: Colors.black),
                                ),
                              ),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 4,
                  color: Colors.grey.shade200,
                ),
                Row(
                  children: <Widget>[
                    SizedBox(
                      width: 25,
                    ),
                    Icon(
                      Icons.mode_edit,
                      size: 15,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Expanded(
                        child: TextField(
                      maxLines: 1,
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 10),
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration.collapsed(
                          hintText:
                              "Any instructions? E.g. Don't ring the doorbell",
                          hintStyle: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300)),
                    ))
                  ],
                ),
                Container(
                  height: 4,
                  color: Colors.grey.shade200,
                ),
                SizedBox(
                  height: 20,
                ),
                showPrice == true
                    ? Container(
                        margin:
                            EdgeInsets.only(left: 20, bottom: 25, right: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                child: Text(
                              "Payment Details",
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w500),
                            )),
                            SizedBox(
                              height: 00,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text("Partner delivery fee",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(10),
                                            color: Colors.orange.shade100,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 5,
                                                right: 5,
                                                top: 2,
                                                bottom: 2),
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.offline_bolt,
                                                  size: 12.5,
                                                ),
                                                Text(" 1.33x",
                                                    style: TextStyle(
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.w400)),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.info,
                                        color: Colors.grey.shade700,
                                        size: 14,
                                      ),
                                      onPressed: () {
                                        _packageCharges(context);
                                      },
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(
                                      "₹23",
                                      style: TextStyle(
                                          decoration:
                                              TextDecoration.lineThrough,
                                          color: Colors.grey,
                                          fontSize: 12),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text("₹15",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400))
                                  ],
                                ),
                              ],
                            ),
                            Divider(
                              height: 0,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "To pay",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text("₹15",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400))
                              ],
                            )
                          ],
                        ),
                      )
                    : Container(
                        height: 0,
                        width: 0,
                      ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Divider(),
                Padding(
                  padding: EdgeInsets.fromLTRB(12, 5, 12, 5),
                  child: Text(
                    "By confirming I accept this order doesn't contain illegal/restricted items. The delivery partner may ask you to verify the contents of the package and could choose to refuse the task if the items are blacklisted in accordance to our policy.",
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Divider(),
                showPrice
                    ? Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          "₹15",
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "₹23",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              decoration:
                                                  TextDecoration.lineThrough),
                                        )
                                      ],
                                    ),
                                    Text(
                                      "Inclusive of all charges",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                                child: InkWell(
                              onTap: () {
                                var router = new MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return PickUpPayment();
                                });
                                Navigator.push(context, router);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 40,
                                margin: EdgeInsets.only(left: 0, right: 10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.red.shade600,
                                ),
                                child: Text(
                                  "Confirm Order",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                              ),
                            ))
                          ],
                        ),
                      )
                    : Container(
                        margin:
                            EdgeInsets.only(left: 15, right: 15, bottom: 10),
                        alignment: Alignment.center,
                        height: 40,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: dropAdd == "" ||
                                    pickupAdd == "" ||
                                    packageType == ""
                                ? Colors.grey.shade400
                                : Colors.red.shade700),
                        child: Text(
                          "Confirm Order",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                      )
              ],
            ),
          )
        ],
      ),
    );
  }

  void _packageTypeModalBottomSheet(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        backgroundColor: Colors.white,
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setCheck
                  /*You can rename this!*/) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 10, 25, 20),
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 5,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey.shade300),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Image.asset(
                          "images/pickAndDrop/bottomSheet.png",
                          height: 60,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Text(
                            "Select package content",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 18),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(
                              value: doc,
                              onChanged: (bool value) {
                                setCheck(() {
                                  doc = value;
                                });
                              },
                            ),
                            Text("Document | Books"),
                          ],
                        ),
                        // [Tuesday] checkbox
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(
                              value: clothes,
                              onChanged: (bool value) {
                                setCheck(() {
                                  clothes = value;
                                });
                              },
                            ),
                            Text("Clothes | Accessories"),
                          ],
                        ),
                        // [Wednesday] checkbox
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(
                              value: food,
                              onChanged: (bool value) {
                                setCheck(() {
                                  food = value;
                                });
                              },
                            ),
                            Text("Food | Flowers"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(
                              value: sports,
                              onChanged: (bool value) {
                                setCheck(() {
                                  sports = value;
                                });
                              },
                            ),
                            Text("Sports Item | House Item"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(
                              value: electronics,
                              onChanged: (bool value) {
                                setCheck(() {
                                  electronics = value;
                                });
                              },
                            ),
                            Text("Electronic Items"),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  clothes = false;
                                  doc = false;
                                  electronics = false;
                                  sports = false;
                                  food = false;
                                  packageType = "";
                                  showPrice = false;
                                });
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.grey.shade300),
                                child: Text("Cancel"),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  showPrice = true;
                                  packageType = "";
                                  if (doc) {
                                    packageType =
                                        packageType + "Documents | Books ";
                                  }
                                  if (clothes) {
                                    packageType =
                                        packageType + "Clothes | Accessories ";
                                  }
                                  if (food) {
                                    packageType =
                                        packageType + "Food | Flowers ";
                                  }
                                  if (sports) {
                                    packageType = packageType +
                                        "Sports Item | Household Item ";
                                  }
                                  if (electronics) {
                                    packageType =
                                        packageType + "Electronic Item ";
                                  }
                                });

                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: sports == false &&
                                            doc == false &&
                                            clothes == false &&
                                            food == false &&
                                            electronics == false
                                        ? Colors.grey.shade300
                                        : Colors.red.shade600),
                                alignment: Alignment.center,
                                child: Text(
                                  "Done",
                                  style: TextStyle(
                                      color: sports == false &&
                                              doc == false &&
                                              clothes == false &&
                                              food == false &&
                                              electronics == false
                                          ? Colors.black
                                          : Colors.white),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          });
        });
  }

  void _packageCharges(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        backgroundColor: Colors.white,
        context: context,
        builder: (context) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter setCheck
                  /*You can rename this!*/) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 10, 25, 20),
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Text(
                                "Delivery Charges Breakdown",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 19),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            IconButton(
                              icon: Icon(Icons.clear),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Total distance",
                              style: TextStyle(fontSize: 12),
                            ),
                            Text("1.5 Kms", style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        // [Tuesday] checkbox
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Delivery charges",
                                style: TextStyle(fontSize: 12)),
                            Text("₹10/Km", style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        // [Wednesday] checkbox
                      ],
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Total"),
                          Text("₹15"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          });
        });
  }
}
