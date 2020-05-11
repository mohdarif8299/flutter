import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:photo_view/photo_view.dart';

class ZoomDisplay extends StatefulWidget {
  final int index;

  ZoomDisplay(this.index);

  @override
  _ZoomDisplayState createState() => _ZoomDisplayState();
}

class _ZoomDisplayState extends State<ZoomDisplay> {
  List<String> productImage = [
    "images/shop/mouse.png",
    "images/shop/mouse2.png",
    "images/shop/lap4.png",
    "images/shop/mouse.png",
    "images/shop/mouse2.png",
    "images/shop/lap4.png",
  ];
  var swipeControl = SwiperController();
  int pic = 0;

  @override
  void initState() {
    pic = widget.index;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Name"),
        elevation: 1,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Swiper(
              curve: Curves.fastOutSlowIn,
              itemCount: 4,
              index: pic,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: ClipRect(
                      child: Container(
                        child: PhotoView(
                          backgroundDecoration:
                              BoxDecoration(color: Colors.transparent),
                          minScale: PhotoViewComputedScale.contained * 1.0,
                          maxScale: PhotoViewComputedScale.covered * 1.2,
                          imageProvider: AssetImage(
                            productImage[index],
                          ),
                        ),
                      ),
                    ));
              },
              pagination: new SwiperPagination(
                  margin: new EdgeInsets.all(5.0),
                  builder: new DotSwiperPaginationBuilder(
                      color: Colors.grey, activeColor: Colors.red)),
            ),
          ),
        ],
      ),
    );
  }
}
