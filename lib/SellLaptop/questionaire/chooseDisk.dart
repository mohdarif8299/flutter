import 'package:flutter/material.dart';
import 'package:internship_hb/SellLaptop/questionaire/sharedValues.dart';
class ChooseDisk extends StatefulWidget {
  @override
  _ChooseDiskState createState() => _ChooseDiskState();
}

class _ChooseDiskState extends State<ChooseDisk> {
  List<String> diskList = ["32 GB","32 GB (SSD)", "64 GB","64 GB (SSD)", "128 GB", "128 GB (SSD)", "256 GB", "256 GB (SSD)", "500 GB","500 GB (SSD)", "500 GB + 128 GB SSD", "1 TB + 256 GB SSD","2 TB + 500 GB SSD"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 1,),
      body: ListView.builder(
          itemCount: diskList.length,
          itemBuilder: (_, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(15,12,20,12),
              child: InkWell(
                onTap: (){

                  selectedDisk=index;
                  hardDisk=diskList[index];
                  Navigator.pop(context);

                },
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(diskList[index]),
                      ),
                      Image.asset(
                        index == selectedDisk
                            ? "images/sellLaptop/ticked.png"
                            : "images/sellLaptop/untick.png",
                        height: 26,
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
