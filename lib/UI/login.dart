import 'package:flutter/material.dart';

class LogInUi extends StatefulWidget {
  @override
  _LogInUiState createState() => _LogInUiState();
}

class _LogInUiState extends State<LogInUi> {
  static const TextStyle btnFontStyle = TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0);
  static const TextStyle headFontStyle =
      TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: Colors.grey[100],
              image: DecorationImage(
                  image: AssetImage('assets/log_in_back.jpg'),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.white, BlendMode.overlay))),
          child: Column(
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
                    "Sign In",
                    style: headFontStyle,
                  ),
                  new Text(
                    "Skip",
                    style: headFontStyle,
                  ),
                ],
              ),
              new SizedBox(height: 20.0),
              new Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      image: new ExactAssetImage('assets/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  )),
                  new SizedBox(height: 200.0),
              Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.yellow,
                  elevation: 2.0,
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: MediaQuery.of(context).size.width - 60.0,
                    child: Text(
                      "Sign in",
                      textAlign: TextAlign.center,
                      style:btnFontStyle,
                    ),
                  )),
                  new SizedBox(height: 20.0),
              Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.red,
                  elevation: 2.0,
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: MediaQuery.of(context).size.width - 40.0,
                    child: Text(
                      "Create Account",
                      textAlign: TextAlign.center,
                      style: btnFontStyle,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
