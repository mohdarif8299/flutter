import 'package:flutter/material.dart';
import 'package:internship_hb/Shopping/categories/sortingPage.dart';
import 'package:internship_hb/Shopping/productDisplay/productDisplay.dart';

class CategoryPage extends StatefulWidget {
  final String title;

  CategoryPage(this.title);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  MediaQueryData data;
  List<String> laptopImg = [
    "images/shop/lap.png",
    "images/shop/lap2.png",
    "images/shop/lap3.png",
    "images/shop/lap4.png",
    "images/shop/lap5.png",
    "images/shop/lap6.png",
    "images/shop/lap.png",
    "images/shop/lap2.png",
    "images/shop/lap3.png",
    "images/shop/lap4.png",
    "images/shop/lap5.png",
    "images/shop/lap6.png"
  ];
  List<String> lapNames = [
    "HP Pavilion",
    "Dell Inspiron",
    "Toshiba T-1909",
    "VAIO V-4",
    "HP Elitebook 13'",
    "HP Pavilion",
    "Dell Inspiron",
    "Toshiba T-1909",
    "VAIO V-4",
    "HP Elitebook 13'",
    "VAIO V-4",
    "HP Elitebook 13'"
  ];

  @override
  Widget build(BuildContext context) {
    data = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 20,
          ),
          IconButton(
            icon: Icon(Icons.sort),
            onPressed: () {
              var router =
                  new MaterialPageRoute(builder: (BuildContext context) {
                return SortingPage();
              });
              Navigator.push(context, router);
            },
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: GridView.count(
          shrinkWrap: true,
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,
          childAspectRatio: .8,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          children: List.generate(12, (index) {
            return InkWell(
              onTap: () {
                var router =
                    new MaterialPageRoute(builder: (BuildContext context) {
                  return ProductDisplay();
                });
                Navigator.push(context, router);
              },
              child: Container(
                  child: Container(
                decoration: BoxDecoration(
                  border: Border(
                      right: index % 2 == 0
                          ? BorderSide(width: 0.2, color: Colors.black)
                          : BorderSide(width: 0.0, color: Colors.transparent),
                      bottom: BorderSide(width: 0.2, color: Colors.black)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      laptopImg[index],
                      height: data.size.width * .4,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      lapNames[index],
                      style: TextStyle(color: Colors.black),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 10, 8, 5),
                      child: Text(
                        "Cell Phone Holder - Flexible....",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "₹ 169/- ",
                          style: TextStyle(
                              fontSize: 12, color: Colors.red.shade800),
                        ),
                        Text(
                          " 60% off",
                          style: TextStyle(color: Colors.green.shade800),
                        ),
                      ],
                    )
                  ],
                ),
              )),
            );
          })),
    );
  }
}
