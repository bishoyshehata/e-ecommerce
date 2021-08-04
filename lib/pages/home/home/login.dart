import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget {
  State<StatefulWidget> createState() {
    return loginState();
  }
}
class loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
var diw=MediaQuery.of(context).size.width;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(

          body: ListView(children: <Widget>[
            Stack(children:<Widget>[

              Positioned(
              child:Transform.translate(
              offset: Offset(200,550)
              ,child: Container(
              height: diw,
              width: diw,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(diw),color: Colors.amberAccent.withOpacity(.5))))),

              Positioned(
              child:Transform.translate(
              offset: Offset(-300,250)
              ,child: Container(
              height: diw,
              width: diw,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(diw),color: Colors.blue.withOpacity(.5))))),

              Positioned(
                child:Transform.scale(scale:2,
                  child:Transform.translate(
                      offset: Offset(0,-220)
                      ,child: Container(
                      height: diw,
                      width: diw,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(diw),color: Colors.amberAccent.withOpacity(.9)
                      )
                  ))
                )),
              Container(
                child: SingleChildScrollView(child: Column(children: <Widget>[
                  Center(child:Container(padding: EdgeInsets.all(10),child: Text("تسجيل الدخول",
                    style: TextStyle(color: Colors.black),textScaleFactor: 2,), ),),
                          Padding(padding: EdgeInsets.all(14)),
                  Container(height: 150,width: 150,decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                      boxShadow: [
                        BoxShadow(color: Colors.black,blurRadius: 20,spreadRadius: 5)
                      ],color: Colors.blue),
                    child: Icon(Icons.person,size: 60,color: Colors.black,),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Center(child: Container(height: 350,width: 350,decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(color: Colors.black,blurRadius: 5,)
                      ],color: Colors.white),),),



                ],),),
              ),












            ]),
      ]),
        )
    );
  }
}