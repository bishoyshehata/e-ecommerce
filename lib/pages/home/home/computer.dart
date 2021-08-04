import 'package:carousel_pro/carousel_pro.dart';
import 'package:first_fluter_app/Component/Drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:first_fluter_app/Component/mobilist.dart';
import 'package:flutter/material.dart';

class computer extends StatefulWidget {
  State<StatefulWidget> createState() {
    return computerState();
  }
}

class computerState extends State<computer> {
  var mymobile = [
    {
      'cpu': 'ثماني النواة',
      'camera': '64mb',
      'storage': '128GB',
      'price': '5600 L.E',
      'version': 'سامسونجa7',
      'screen': '6 بوصة'
    },
    {
      'cpu': 'ثماني النواة',
      'camera': '128mb',
      'storage': '256GB',
      'price': '10000 L.E',
      'version': 'Iphone xpro',
      'screen': '8 بوصة'
    },
    {
      'cpu': 'ثماني النواة',
      'camera': '128mb',
      'storage': '500GB',
      'price': '20000 L.E',
      'version': 'Iphone اح بح',
      'screen': '8 بوصة'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text("computers"),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: ListView.builder(
            itemCount: mymobile.length,
            itemBuilder: (context, i) {
              return Mobilist(
                storage: mymobile[i]['storage'],
                cpu: mymobile[i]['cpu'],
                camera: mymobile[i]['camera'],
                price: mymobile[i]['price'],
                screen: mymobile[i]['screen'],
                versoin: mymobile[i]['version'],
              );

            },

            //End grid
          ),
        ));
  }
}
