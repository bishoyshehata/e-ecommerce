import 'package:flutter/material.dart';

class phonedatails extends StatefulWidget {
  State<StatefulWidget> createState() {
    return phoneState();
  }
}

class phoneState extends State<phonedatails> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: Text("الأقسام"),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: ListView(
            children: <Widget>[
              Container(
                height: 300,
                child: GridTile(
                    child: Image.asset("images/samsunga7.jpg",
                        fit: BoxFit.fitHeight),
                    footer: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 70,
                            padding:
                                EdgeInsets.only(left: 180, top: 10),
                            child: Text(
                              "Samsung a7",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  ),
                            ),
                            color: Colors.black.withOpacity(0.3),
                          ),
                        ),
                        Container(height: 70,

                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            "5600 L.E",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                               ),
                          ),
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ],
                    )),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "التفاصيل :",
                        style: TextStyle(
                            fontSize: 20),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.all(10),
                     child: RichText(text: TextSpan(children: <TextSpan>[
                       TextSpan(text: "النوع :",
                         style:
                         TextStyle(color: Colors.black, fontSize: 25)),

                        TextSpan(text:" سامسونج a7 .",
                            style:TextStyle(color: Colors.blue, fontSize: 25))


                     ]),),
                    ),
                    Container(
                      color: Colors.blue,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text("الشاشة :",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15)),
                          Text(" 6 بوصه .",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text("البروسيسور :",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15)),
                          Text(" سنابدراجون .",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 15)),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text("المساحة :",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15)),
                          Text(" 128 جيجابايت .",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text("الرام :",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15)),
                          Text(" 4 جيجابايت .",
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 15)),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text("النوع :",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15)),
                          Text(" نضيف جداااااا .",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text("التليفون  :",
                              style:
                              TextStyle(color: Colors.black, fontSize: 15)),
                          Text(" ملك بوشاااا .",
                              style:
                              TextStyle(color: Colors.blue, fontSize: 15)),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text("السعر  :",
                              style:
                              TextStyle(color: Colors.black, fontSize: 15)),
                          Text(" 5600 جنيها مصريا .",
                              style:
                              TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text("البصمه  :",
                              style:
                              TextStyle(color: Colors.black, fontSize: 15)),
                          Text(" من الجانب الأيمن . ",
                              style:
                              TextStyle(color: Colors.blue, fontSize: 15)),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Text("البصمه  :",
                              style:
                              TextStyle(color: Colors.black, fontSize: 15)),
                          Text(" يمكن جعلها بالوجه. ",
                              style:
                              TextStyle(color: Colors.white, fontSize: 15)),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
