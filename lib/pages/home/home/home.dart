import 'package:carousel_pro/carousel_pro.dart';
import 'package:first_fluter_app/Component/Drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: Datasearch());
                }),
          ],
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Carousel(
                images: [
                  AssetImage('images/1.jpg'),
                  AssetImage('images/2.jpg'),
                  AssetImage('images/myphoto.jpg'),
                ],
                dotColor: Colors.deepOrange,
                indicatorBgPadding: 10,
                boxFit: BoxFit.cover,
                overlayShadow: true,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "الأنواع المتاحة",
                style: TextStyle(fontSize: 20, color: Colors.deepOrange),
              ),
            ),
            Container(
              height: 110,
              width: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                      height: 200,
                      width: 200,
                      child: ListTile(
                        title:
                            Image.asset("images/3.png", height: 70, width: 70),
                        subtitle: Container(
                          child: Text("samsung", textAlign: TextAlign.center),
                        ),
                      )),
                  Container(
                      height: 200,
                      width: 200,
                      child: ListTile(
                        title:
                            Image.asset("images/4.png", height: 70, width: 70),
                        subtitle: Container(
                          child: Text("Oppo", textAlign: TextAlign.center),
                        ),
                      )),
                  Container(
                      height: 200,
                      width: 200,
                      child: ListTile(
                        title:
                            Image.asset("images/3.png", height: 70, width: 70),
                        subtitle: Container(
                          child: Text("shawmi", textAlign: TextAlign.center),
                        ),
                      )),
                  Container(
                      height: 200,
                      width: 200,
                      child: ListTile(
                        title:
                            Image.asset("images/4.png", height: 70, width: 70),
                        subtitle: Container(
                          child: Text("iphone", textAlign: TextAlign.center),
                        ),
                      ))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "أخر المنتجات",
                style: TextStyle(fontSize: 20, color: Colors.deepOrange),
              ),
            ),
            Divider(
              color: Colors.blue,
              height: 10,
              thickness: 1,
            ),
            //start Grid
            Container(
              height: 450,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1),
                children: <Widget>[
                  InkWell(
                    child: GridTile(
                      child: Image.asset("images/3.png"),
                      footer: Container(
                          height: 25,
                          color: Colors.blue.withOpacity(.5),
                          child: Text(
                            "infinix",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: GridTile(
                      child: Image.asset("images/3.png"),
                      footer: Container(
                          height: 25,
                          color: Colors.blue.withOpacity(.5),
                          child: Text(
                            "infinix",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: GridTile(
                      child: Image.asset("images/3.png"),
                      footer: Container(
                          height: 25,
                          color: Colors.blue.withOpacity(.5),
                          child: Text(
                            "infinix",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: GridTile(
                      child: Image.asset("images/3.png"),
                      footer: Container(
                          height: 25,
                          color: Colors.blue.withOpacity(.5),
                          child: Text(
                            "infinix",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: GridTile(
                      child: Image.asset("images/3.png"),
                      footer: Container(
                          height: 25,
                          color: Colors.blue.withOpacity(.5),
                          child: Text(
                            "infinix",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            textAlign: TextAlign.center,
                          )),
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
            //End grid
          ],
        ),
      ),
    );
  }
}

class Datasearch extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {
      Navigator.of(context).pop();
    })];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
      Navigator.of(context).pop();
    });
  }

  @override
  Widget buildResults(BuildContext context) {
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text("Search here");
  }
}