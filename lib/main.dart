import 'package:first_fluter_app/pages/home/home/categories.dart';
import 'package:first_fluter_app/pages/home/home/home.dart';
import 'package:first_fluter_app/pages/home/home/computer.dart';
import 'package:first_fluter_app/pages/home/home/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:first_fluter_app/pages/home/home/phonedatails.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // start
      title: "first project",
      theme: ThemeData(fontFamily: 'Cairo'),
      home: Home(),
      routes: {
        'mainpage': (context) {
          return Home();
        },
        'login': (context) {
          return login();
        },
        'categories': (context) {
          return categories();
        },
        'samsung': (context) {
          return computer();
        },
        'phonedetails': (context) {
          return phonedatails();
        },
      },

      // end
    );
  }
}
