import 'package:flutter/material.dart';
import 'package:internship_hb/HomeServices/cleaning_pest_category/selectService.dart';

class HomeSrvMain extends StatefulWidget {
  @override
  _HomeSrvMainState createState() => _HomeSrvMainState();
}

class _HomeSrvMainState extends State<HomeSrvMain> {
  List<String> image = [
    // used to display the banner images
    "images/hm3.png",
    "images/hm4.png",
    "images/image1.png",
    "images/image2.png"
  ];
  List<String> categoryImage = [
    //used to display various category images
    "images/shop.png",
    "images/grocery.png",
    "images/home.png",
    "images/delivery.png",
    "images/mobile.png",
    "images/laptop.png",
    "images/home.png",
    "images/mobile.png",
    "images/laptop.png",
    "images/home.png",
    "images/mobile.png",
    "images/mobile.png",
    "images/laptop.png",
    "images/home.png",
  ];
  List<String> category = [
    // name of various categories
    "Salon for Men",
    "Cleaning & Pest Control",
    "Massage at Home",
    "AC service & repair",
    "Carpenter",
    "Plumbers",
    "Electricians",
    "Painting",
    "Makeup & Styling",
    "Appliance Repairing",
    "Gift Card",
    "Painting",
    "Painting",
    "Dala Auto",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 1, title: Text("Home Services")),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 5,
            ),
            Container(
              height: 190,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (_, int index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(15, 8, 0, 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          decoration: BoxDecoration(),
                          height: 170,
                          width: 280,
                          child: Image.asset(
                            image[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              height: 25,
              color: Colors.grey.shade200,
            ),
            GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 4,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1,
                children: List.generate(12, (index) {
                  return InkWell(
                    // only Bathroom cleaning is enabled at this moment
                    onTap: () {
                      if (index == 1) {
                        var router = new MaterialPageRoute(
                            builder: (BuildContext context) {
                              return PestControl();
                            });
                        Navigator.push(context, router);
                      }
//                          }
//                          if (index == 3) {
//                            var router = new MaterialPageRoute(
//                                builder: (BuildContext context) {
//                                  return DeliveryMain();
//                                });
//                            Navigator.push(context, router);
//                          }
//                          if (index == 2) {
//                            var router = new MaterialPageRoute(
//                                builder: (BuildContext context) {
//                                  return DeliveryMain();
//                                });
//                            Navigator.push(context, router);
//                          }
                    },
                    child: Container(
                        child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          right: index == 3 ||
                              index ==
                                  7 // we are using them to set border only where required, without this the border will form even outside rounded edges of card..
                              ? BorderSide(
                                  width: 0.0, color: Colors.transparent)
                              : BorderSide(width: 0.1, color: Colors.black),
                          bottom: index < 14
                              ? BorderSide(width: 0.1, color: Colors.black)
                              : BorderSide(
                                  width: 0.0, color: Colors.transparent),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            categoryImage[index],
                            height: 26,
                            color: Colors.red.shade600,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.only(left: 6, right: 6),
                              alignment: Alignment.topCenter,
                              child: Text(
                                category[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ),
                          )
                        ],
                      ),
                    )),
                  );
                })),
            Container(
              height: 25,
              color: Colors.grey.shade200,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 25, 12, 5),
              child: Text(
                "Appliances : Service and Repair",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 30),
              child: Text(
                "90-day repair warranty",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1.5,
                          child: Container(
                            child: Image.asset(
                              "images/ac.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "AC Service & Repair",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13.5),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1.5,
                          child: Container(
                            child: Image.asset(
                              "images/geyser.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Geyser Service & Repair",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13.5),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1.5,
                          child: Container(
                            child: Image.asset(
                              "images/fridge.jpg",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Refrigerator Service & Repair",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13.5),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1.5,
                          child: Container(
                            child: Image.asset(
                              "images/geyser.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Geyser Service & Repair",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13.5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  color: Colors.red.shade100.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red.shade100)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Text(
                  "View all repair services",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.red.shade700),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 25,
              color: Colors.grey.shade300,
            ),
            Container(
              color: Colors.red.shade900,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 25, 0, 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Plumbers,",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Electricians,",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Carpenters",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Image.asset(
                    "images/plumb.png",
                  )),
                  SizedBox(
                    width: 30,
                  )
                ],
              ),
            ),
            Container(
              height: 25,
              color: Colors.grey.shade300,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 25, 12, 5),
              child: Text(
                "Cleaning & Pest Control",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, bottom: 30),
              child: Text(
                "Exciting deals on cleaning services",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1.5,
                          child: Container(
                            child: Image.asset(
                              "images/bathroom.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Bathroom Deep Cleaning",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13.5),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1.5,
                          child: Container(
                            child: Image.asset(
                              "images/bathroom.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Kitchen Deep Cleaning",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13.5),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1.5,
                          child: Container(
                            child: Image.asset(
                              "images/sofa.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Sofa Cleaning",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13.5),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1.5,
                          child: Container(
                            child: Image.asset(
                              "images/sofa.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Pest Control",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 13.5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 15, right: 15),
              decoration: BoxDecoration(
                  color: Colors.red.shade100.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.red.shade100)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Text(
                  "View all cleaning services",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.red.shade700),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 25,
              color: Colors.grey.shade300,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 25, 0, 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "House Painters",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Transparent Pricing |\n On-time completion",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset(
                    "images/paint.png",
                    fit: BoxFit.fill,
                    width: 140,
                  ),
                ],
              ),
            ),
            Container(
              height: 25,
              color: Colors.grey.shade300,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30.0, left: 15, bottom: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Fitness Trainer",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Customized plans | Expert\nTrainers",
                            style: TextStyle(
                                color: Colors.green.shade900,
                                fontWeight: FontWeight.w400,
                                fontSize: 14)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Image.asset(
                      "images/hm3.png",
                      height: 70,
                    ),
                  ),
                ]),
            Divider(
              height: 0,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30.0, left: 15, bottom: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Party Decorator",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Birthdays | Annievarsaries",
                            style: TextStyle(
                                color: Colors.green.shade900,
                                fontWeight: FontWeight.w400,
                                fontSize: 14)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Image.asset(
                      "images/hm3.png",
                      height: 70,
                    ),
                  ),
                ]),
            Divider(
              height: 0,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30.0, left: 15, bottom: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Makeup at Home",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Party makeup | Hairstyling |\nSaree draping",
                            style: TextStyle(
                                color: Colors.green.shade900,
                                fontWeight: FontWeight.w400,
                                fontSize: 14)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Image.asset(
                      "images/hm3.png",
                      height: 70,
                    ),
                  ),
                ]),
            Container(
              height: 25,
              color: Colors.grey.shade300,
            ),
          ],
        ),
      ),
    );
  }
}
