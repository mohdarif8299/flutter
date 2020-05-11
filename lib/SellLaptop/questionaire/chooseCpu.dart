import 'package:flutter/material.dart';
import 'package:internship_hb/SellLaptop/questionaire/sharedValues.dart';

class ChooseCpu extends StatefulWidget {
  @override
  _ChooseCpuState createState() => _ChooseCpuState();
}

class _ChooseCpuState extends State<ChooseCpu> {
  List<String> cpuList = [
    "Intel Pentium",
    "Intel Pentium Pro",
    "Intel Celeron ",
    "Intel Xeon",
    "Intel Core",
    "Intel Core 2",
    "Intel Atom",
    "Intel Core i3",
    "Intel Core i5",
    "Intel Core i7",
    "Intel Pentium",
    "Intel Pentium Pro",
    "Intel Celeron ",
    "Intel Xeon",
    "Intel Core",
    "Intel Core 2",
    "Intel Atom",
    "Intel Core i3",
    "Intel Core i5",
    "Intel Core i7"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 1,),
      body: ListView.builder(
          itemCount: cpuList.length,
          itemBuilder: (_, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(15,12,20,12),
              child: InkWell(
                onTap: (){

                    selectedCpu=index;
                    processor=cpuList[index];
                    Navigator.pop(context);

                },
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(cpuList[index]),
                      ),
                      Image.asset(
                        index == selectedCpu
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
