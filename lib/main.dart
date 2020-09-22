import 'package:flutter/material.dart';
import 'package:geet_app/UI/albums.dart';
import 'package:geet_app/UI/signIn.dart';
//import 'package:geet_app/UI/intro_page.dart';
import 'package:geet_app/UI/signUp.dart';
import 'package:geet_app/Widget/warning.dart';

import 'UI/geners.dart';
import 'UI/treadingAlbum.dart';
import 'UI/user_settings.dart';
//import 'package:geet_app/UI/user_profile.dart';
//import 'package:geet_app/Widget/bottom_item.dart';
//import 'UI/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Geet',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        canvasColor: Colors.transparent,
        primarySwatch: Colors.blue,
        fontFamily: "Roboto",
      ),

      home: MyLayout(),
    );
  }
}

