import 'package:flutter/material.dart';

class Albums extends StatefulWidget {
  @override
  _AlbumsState createState() => _AlbumsState();
}

class _AlbumsState extends State<Albums> {
  static const TextStyle headFontStyle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
        title: new Text('Albums'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        actions: <Widget>[   
          new Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 22.0,
          ),
        ],
      ),
      body: SafeArea(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      //  color: Colors.yellow,
                 decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.yellow, Colors.pink],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
                  child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new SizedBox(height: 5.0),
           /*   Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Icon(
                    Icons.arrow_left,
                    size: 40.0,
                  ),
                  new Text(
                    "Albums",
                    style: headFontStyle,
                  ),
                  new Text(
                    "",
                    style: headFontStyle,
                  ),
                ],
              ),*/
              new SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: new Text(
                  "English Albums",
                  style: headFontStyle,
                ),
              ),
              slidingBar(
                  "The Darkside of Moon", " Pink Floyed", "newrealese2.png"),
              new SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: new Text(
                  "Bangla Albums",
                  style: headFontStyle,
                ),
              ),
              slidingBar("Tomar Khola Haoya", "Shaan", "newrealese3.png"),
              new SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left:8.0),
                child: new Text(
                  "Hindi Albums",
                  style: headFontStyle,
                ),
              ),
              slidingBar("Top 10 Songs", "AR Rahman", "newrealese1.png"),
            ],
          ),
        ),
      )),
    );
  }
}

Widget slidingBar(String albumName, singerName, imagName) {
  return Container(
    height: 200,
    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 5),
    child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => SizedBox(width: 1),
        itemCount: 5,
        itemBuilder: (context, index) => ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                width: MediaQuery.of(context).size.width / 1.7,
                height: 140,
                //color: Colors.white,

                /*decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [Colors.lightBlue, Colors.white],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight)),*/
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        width: 120.0,
                        height: 120.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.rectangle,
                          image: new DecorationImage(
                            image: new ExactAssetImage('assets/$imagName'),
                            fit: BoxFit.cover,
                          ),
                        )),
                    Text(
                      "$albumName",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    Text(
                      "$singerName",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 15.0),
                    )
                  ],
                ),
              ),
            )),
  );
}
