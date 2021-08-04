import 'package:carousel_pro/carousel_pro.dart';
import 'package:first_fluter_app/Component/Drawer.dart';
import 'package:first_fluter_app/pages/home/home/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class categories extends StatefulWidget {
  State<StatefulWidget> createState() {
    return categoryState();
  }
}
class categoryState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
        appBar: AppBar(
        title: Text("الأقسام"),
    actions: <Widget>[
      IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return Home();
        }));

      })
    ],
    centerTitle: true,
    backgroundColor: Colors.blue,

    ),
    drawer:MyDrawer(),
          body :GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
          children: <Widget>[
            InkWell(child: Card(child: Column(children: <Widget>[
              Expanded(child: Image.asset("images/3.png",fit: BoxFit.fill,),
              ),
              Container(child: Text('phones',style: TextStyle(fontSize: 20),),)
            ],),), onTap: (){
              Navigator.of(context).pushNamed('samsung');

            }),
            //end category
            InkWell(child: Card(child: Column(children: <Widget>[
              Expanded(child: Image.asset("images/2.jpg",fit: BoxFit.cover,),
              ),
              Container(child: Text('Computers',style: TextStyle(fontSize: 20),),)
            ],),), onTap: (){}
            ),InkWell(child: Card(child: Column(children: <Widget>[
              Expanded(child: Image.asset("images/1.jpg",fit: BoxFit.cover,),
              ),
              Container(child: Text('Laptops',style: TextStyle(fontSize: 20),),)
            ],),), onTap: (){}
            ),InkWell(child: Card(child: Column(children: <Widget>[
              Expanded(child: Image.asset("images/1.jpg",fit: BoxFit.cover,),
              ),
              Container(child: Text('electric devices',style: TextStyle(fontSize: 20),),)
            ],),), onTap: (){}),
          ],)
        ));//scaffold
  }
}