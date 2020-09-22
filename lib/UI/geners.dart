import 'package:flutter/material.dart';
import 'package:geet_app/Widget/search.dart';

class GenersUI extends StatefulWidget {
  @override
  _GenersUIState createState() => _GenersUIState();
}

class _GenersUIState extends State<GenersUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Geners"),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.menu), onPressed: () {})
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.pink],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              searchBar(),
              albumContainer(context, 'Ambinet', 'assets/geners1.png'),
              albumContainer(context, 'British Folk', 'assets/geners2.png'),
              albumContainer(context, 'Chillout', 'assets/geners3.png'),
              albumContainer(context, 'Dram & Dass', 'assets/geners4.png'),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      )),
    );
  }
}

Widget albumContainer(BuildContext context, String genersName, picLink) {
  const TextStyle titleFontStyle = TextStyle(
    letterSpacing: 2.0,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
  );

  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height / 4.5,
    padding: EdgeInsets.only(top: 40.0, left: 30.0),
    margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
    child: Text(
      '$genersName',
      style: titleFontStyle,
    ),
    decoration: BoxDecoration(
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
      image: DecorationImage(
        image: ExactAssetImage('$picLink'),
        fit: BoxFit.cover,
        // colorFilter: ColorFilter.mode(Colors.yellow, BlendMode.overlay)
      ),
    ),
  );
}
