import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Bishoy Shehata"),
            accountEmail: Text("bishoyshehata@gmail.com"),
            currentAccountPicture: CircleAvatar(child: Icon(Icons.person)),
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              image: DecorationImage(
                  image: AssetImage("images/myphoto.jpg"), fit: BoxFit.fill),
            ),
          ),
          ListTile(
            title: Text(
              "الصفحه الرئيسيه",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('mainpage');
            },
          ),
          ListTile(
            title: Text(
              "الأقسام",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            leading: Icon(
              Icons.app_registration,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('categories');
            },
          ),
          ListTile(
            title: Text(
              "النتيجه",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            leading: Icon(
              Icons.date_range_outlined,
              color: Colors.blue,
            ),
            onTap: () {},
          ),
          Divider(
            color: Colors.blue,
            height: 10,
            thickness: 0,
          ),
          ListTile(
            title: Text(
              "تسجيل الدخول",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            leading: Icon(
              Icons.login,
              color: Colors.blue,
            ),
            onTap: () {
              Navigator.of(context).pushNamed('login');
            },
          ),

          ListTile(
            title: Text(
              "تسجيل الخروج",
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
            leading: Icon(
              Icons.logout,
              color: Colors.blue,
            ),
            onTap: () {
              showDialog(context: context, builder: (context){
                return AlertDialog(title: Text("تسجيل الخروج ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
                  ,content: Text("هل أنت متأكد من تسجيل الخروج ؟"),
                actions: <Widget>[

                  FlatButton(onPressed: (){SystemNavigator.pop();}, child: Text("Yes")),
                  FlatButton(onPressed: (){Navigator.of(context).pop(context);}, child: Text("No")),

                ],
                );
              });
            },
          ),
        ],
      ),
    );
  }
}
