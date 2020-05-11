import 'package:flutter/material.dart';
import 'package:internship_hb/SellLaptop/questionaire/sharedValues.dart';

class ChooseRam extends StatefulWidget {
  @override
  _ChooseRamState createState() => _ChooseRamState();
}

class _ChooseRamState extends State<ChooseRam> {
  List<int> ramList = [1,2,3,4,5,6,8,9,12,13,16,24,32];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 1,),
      body: ListView.builder(
          itemCount: ramList.length,
          itemBuilder: (_, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(15,12,20,12),
              child: InkWell(
                onTap: (){

                  selectedRam=index;
                ram=ramList[index];
                  Navigator.pop(context);

                },
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("${ramList[index].toString()} GB"),
                      ),
                      Image.asset(
                        index == selectedRam
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
