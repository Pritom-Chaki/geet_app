
import 'package:flutter/material.dart';
import 'package:geet_app/UI/Home.dart';
import 'package:geet_app/UI/user_profile.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  PageController controller = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: new AppBar(
       title: new Text("Walkthrough"),
       centerTitle: true,
        backgroundColor: Colors.yellow,
      actions: <Widget>[
Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          pageIndex != 2
                              ? FlatButton(
                                  splashColor: Colors.transparent,
                                  child: Text(
                                    'SKIP',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (context) => Home()));
                                  },
                                )
                              : FlatButton(
                                  splashColor: Colors.transparent,
                                  child: Text(
                                    'FINISH',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  onPressed: () {
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) => User_Profile()));
                                  },
                                )
                        ],
                      ),
      ],

       
     ),
      body: SafeArea(
              child: Container(
        width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.grey[100],
              image: DecorationImage(image: AssetImage('assets/Background1.png'))),
          child: Stack(
            children: <Widget>[
              PageView(
                onPageChanged: (value) {
                  setState(() {
                    pageIndex = value;
                  });
                },
                controller: controller,
                children: <Widget>[
                  Column(
                    //Page 1 Design
                  ),
                  Column(
                    //Page 2 Design
                  ),
                  Column(
                    //Page 3 Design
                  ),
                ],
              ),
              Positioned(
                bottom: 16.0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(8.0),
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black, width: 2),
                                color: pageIndex == 0 ? Colors.yellow : Colors.white),
                          ),
                          Container(
                            margin: EdgeInsets.all(8.0),
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black, width: 2),
                                color: pageIndex == 1 ? Colors.yellow : Colors.white),
                          ),
                          Container(
                            margin: EdgeInsets.all(8.0),
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.black, width: 2),
                                color: pageIndex == 2 ? Colors.yellow : Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
