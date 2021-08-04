import 'package:flutter/material.dart';

class Mobilist extends StatelessWidget {
  final camera;
  final cpu;
  final screen;
  final storage;
  final price;
  final versoin;

  Mobilist(
      {this.camera,
      this.cpu,
      this.screen,
      this.storage,
      this.price,
      this.versoin});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return  InkWell(
      child: Container(
        height: 150,
        width: 100,
        child: Card(
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Image.asset("images/samsunga7.jpg"),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.topRight,
                  height: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(

                        child: Container(child:Row(
                          children: <Widget>[
                            Expanded(child: Container(padding: EdgeInsets.only(left: 10),child:   Text(versoin,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                            ) ,)
                              ,),
                            Expanded(child: Container(child:Text(
                              "السعر : ${price}",
                              style: TextStyle(
                                  color: Colors.blue,fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            ),)
                          ],
                        )
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Text("لمعالج:$cpu",style: TextStyle(fontSize: 14),),
                          ),
                          Expanded(
                            child: Text(
                              "التخزين :$storage"
                              ,style: TextStyle(fontSize: 14),),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              "الكاميرا:$camera",style: TextStyle(fontSize: 14),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "لشاشة:$screen",style: TextStyle(fontSize: 14),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.of(context).pushNamed("phonedetails");
      },

    );


  }
}
