import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:internship_hb/bottomNavigation.dart';

import 'bottomNavigation.dart';
void main() async {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle( //used to set orientation of phone
          statusBarColor: Colors.white //set status bar color
  ));
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MaterialApp(
//      theme: ThemeData(
//        primaryColor: Colors.white,
//        // Define the default brightness and colors.
//        accentColor: Colors.redAccent
//      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavigationPage(), // bottom navigation bar page
    ));
  });
}

class ThemeData {
}
