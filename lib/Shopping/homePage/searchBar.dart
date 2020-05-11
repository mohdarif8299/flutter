import 'package:flutter/material.dart';
import 'package:internship_hb/Shopping/homePage/searchPage.dart';

class MySearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        var router = new MaterialPageRoute(builder: (BuildContext context) {
          return SearchPage();
        });
        Navigator.push(context, router);
      },
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        color: Colors.red.shade600,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 8, 10, 8),
          child: Container(
            height: 40,
            color: Colors.grey.shade100,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Row(
                children: <Widget>[
                  Icon(Icons.search),
                  SizedBox(width: 10),
                  Text("Search for Products, Brands and More")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
