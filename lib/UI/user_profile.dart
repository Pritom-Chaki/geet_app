import 'package:flutter/material.dart';
import 'package:geet_app/Widget/NavDrawer.dart';
import 'package:geet_app/Widget/botom_nav.dart';
import 'package:geet_app/Widget/bottom_item.dart';

// ignore: camel_case_types
class User_Profile extends StatefulWidget {
  @override
  _User_ProfileState createState() => _User_ProfileState();
}

// ignore: camel_case_types
class _User_ProfileState extends State<User_Profile> {
  String username = 'UserMono';
  String mobilenumber = '410-422-9171';
  String eid = 'UserMono@gmail.com';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('My Profile'),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          
          new Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 22.0,
          ),
        ],
      ),
      drawer: NavDrawer(),
      body: SafeArea(
        child: new Container(
          color: Colors.green,
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 30.0),
                  child: new Stack(fit: StackFit.loose, children: <Widget>[
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                            width: 200.0,
                            height: 200.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                image:
                                    new ExactAssetImage('assets/user_pic.png'),
                                fit: BoxFit.cover,
                              ),
                            )),
                      ],
                    ),
                  ])),
              Padding(
                padding: EdgeInsets.only(top: 30.0, left: 10.0),
                child: new Stack(
                  fit: StackFit.loose,
                  children: <Widget>[
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Text('User Information',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                //fontFamily: 'sans-serif-light',
                                color: Colors.deepOrangeAccent)),
                      ],
                    )
                  ],
                ),
              ),
              new Divider(),
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: new Stack(
                  fit: StackFit.loose,
                  children: <Widget>[
                    new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Divider(
                          height: 2.0,
                          color: Colors.white,
                        ),
                        new Text('$username',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 25.0,
                                fontFamily: 'Rubik-Bold',
                                color: Colors.white)),
                        new Divider(
                          height: 2.0,
                          color: Colors.white,
                        ),
                        new Text('$eid',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 25.0,
                                fontFamily: 'Rubik-Bold',
                                color: Colors.white)),
                        new Divider(
                          height: 2.0,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 30.0, left: 10.0),
                child: new Stack(
                  fit: StackFit.loose,
                  children: <Widget>[
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        new Text('Connections',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0,
                                //fontFamily: 'sans-serif-light',
                                color: Colors.deepOrangeAccent)),
                        new Divider(
                          height: 1.0,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: new Stack(
                  fit: StackFit.loose,
                  children: <Widget>[
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Container(
                            width: 30.0,
                            height: 30.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: new DecorationImage(
                                image: new ExactAssetImage(
                                    'assets/icons/facebook_icon.png'),
                                fit: BoxFit.cover,
                              ),
                            )),
                        new Text('Google',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 25.0,
                                fontFamily: 'Rubik-Bold',
                                color: Colors.white)),
                        new SizedBox(width: 100.0),
                        new Text('ccc',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 25.0,
                                fontFamily: 'Rubik-Bold',
                                color: Colors.white)),
                      ],
                    ),
                    new Divider(height: 1.0, color: Colors.white,),
                  ],
                ),
              ),

              //Padding(
              //padding: EdgeInsets.only(),
              //child: ,
              //),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavbar(),
    );
  }
}
