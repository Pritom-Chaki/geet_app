import 'package:flutter/material.dart';

class UserSetting extends StatefulWidget {
  @override
  _UserSettingState createState() => _UserSettingState();
}

class _UserSettingState extends State<UserSetting> {
  String username = 'UserMono';
  String mobilenumber = '410-422-9171';
  String eid = 'UserMono@gmail.com';

   //static double sWidth= MediaQuery.of(context).size.width;
     //   double  sHeight= MediaQuery.of(context).size.height;

  static const TextStyle btnFontStyle = TextStyle(
    color: Colors.yellow,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );

  static const TextStyle infoFontStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal,
    fontSize: 25.0,
  );
  static const TextStyle headingFontStyle = TextStyle(
    color: Colors.deepOrangeAccent,
    fontWeight: FontWeight.normal,
    fontSize: 20.0,
  );
  static const TextStyle headFontStyle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black);

  static const Color iconColor = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new SizedBox(height: 5.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Icon(
                    Icons.arrow_left,
                    size: 40.0,
                  ),
                  new Text(
                    "Setting",
                    style: headFontStyle,
                  ),
                  new Text(
                    "",
                    style: headFontStyle,
                  ),
                ],
              ),
              new SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: new Text(
                  'User Information',
                  style: headingFontStyle,
                  textAlign: TextAlign.start,
                ),
              ),
              //new SizedBox(height: 40.0),
              new Divider(),

              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      '$username',
                      style: infoFontStyle,
                    ),
                    new Text(
                      'Edit',
                      style: btnFontStyle,
                    ),
                  ],
                ),
              ),
              new Divider(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      '*********',
                      style: infoFontStyle,
                    ),
                    new Text(
                      'Edit',
                      style: btnFontStyle,
                    ),
                  ],
                ),
              ),
              new Divider(),
              new SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: new Text(
                  'Playback',
                  style: headingFontStyle,
                  textAlign: TextAlign.start,
                ),
              ),
              new Divider(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                child: new Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      'Equalizer',
                      style: infoFontStyle,
                    ),
                    new SizedBox(width: 150.0),
                    new Text(
                      'Classical',
                      style: btnFontStyle,
                    ),
                    new Icon(
                      Icons.arrow_right,
                      size: 30.0,
                      color: iconColor,
                    ),
                  ],
                ),
              ),
              new Divider(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                child: new Row(
                  //  mainAxisSize:,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      'Audio Quality',
                      style: infoFontStyle,
                    ),
                    new SizedBox(width: 100.0),
                    new Text(
                      '320 Kb/s',
                      style: btnFontStyle,
                    ),
                    new Icon(
                      Icons.arrow_right,
                      size: 30.0,
                      color: iconColor,
                    ),
                  ],
                ),
              ),
              new Divider(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                child: new Row(
                  //  mainAxisSize:,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(
                      'Autoplay',
                      style: infoFontStyle,
                    ),
                    new SizedBox(width: 100.0),
                    new Icon(
                      Icons.arrow_right,
                      size: 30.0,
                      color: iconColor,
                    ),
                  ],
                ),
              ),
              new Divider(),
              new SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: new Text(
                  'Connection',
                  style: headingFontStyle,
                  textAlign: TextAlign.start,
                ),
              ),
 new SizedBox(height: 2.0),
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15.0,
                ),
                child: Container(
                  color: Colors.white,
                  height: 40.0,
                  width: MediaQuery.of(context).size.width-40.0,
                  padding: EdgeInsets.only(top:5.0),
                  child: Text(
                    "Mail ID: $eid",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                     // height: 5.0,
                      
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
