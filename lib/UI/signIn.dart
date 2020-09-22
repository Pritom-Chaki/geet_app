import 'package:flutter/material.dart';

class SignInUI extends StatefulWidget {
  @override
  _SignInUIState createState() => _SignInUIState();
}

class _SignInUIState extends State<SignInUI> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _userName = TextEditingController();

  double imgHeight = 70.0, imgWidth = 70.0;
  double icnHeight = 50.0, icnWidth = 50.0;

  static const TextStyle inputFontStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 20.0,
  );
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
              color: Colors.yellow,
              image: DecorationImage(
                  image: AssetImage('assets/bitgraph.png'),
                  fit: BoxFit.none,
                  //colorFilter: ColorFilter.mode(Colors.yellow, BlendMode.overlay)
                  ),
                  ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                      width: imgWidth,
                      height: imgHeight,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new ExactAssetImage('assets/newrealese1.png'),
                          fit: BoxFit.cover,
                        ),
                      )),
                  new SizedBox(width: 15.0),
                  new Container(
                      width: imgWidth,
                      height: imgHeight,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new ExactAssetImage('assets/newrealese2.png'),
                          fit: BoxFit.cover,
                        ),
                      )),
                  new SizedBox(width: 15.0),
                  new Container(
                      width: imgWidth,
                      height: imgHeight,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new ExactAssetImage('assets/newrealese3.png'),
                          fit: BoxFit.cover,
                        ),
                      )),
                ],
              ),
              new SizedBox(height: 30.0),
              new Text('New Realease',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20.0,
                      //fontFamily: 'sans-serif-light',
                      color: Colors.white)),
              new SizedBox(height: 20.0),
              new Text('Check out listings of all this week',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20.0,
                      //fontFamily: 'sans-serif-light',
                      color: Colors.white)),
              new Text('new singles & albums',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 20.0,
                      //fontFamily: 'sans-serif-light',
                      color: Colors.white)),
              new SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  top: 10,
                ),
                child: new TextFormField(
                  controller: _email,
                  style: inputFontStyle,
                  decoration: InputDecoration(
                      hintText: "User Name/Email Address",
                      //icon: Icon(Icons.person_outline),
                      border: InputBorder.none),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "The user name / email field cannot be empty";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 50.0,
                  top: 10,
                ),
                child: new TextFormField(
                  obscureText: true,
                  controller: _password,
                  style: inputFontStyle,
                  decoration: InputDecoration(
                      hintText: "Password",
                      //icon: Icon(Icons.person_outline),
                      border: InputBorder.none),
                  validator: (value) {
                    if (value.isEmpty) {
                      return "The password field cannot be empty";
                    }
                    return null;
                  },
                ),
              ),
              new SizedBox(height: 40.0),
              Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white70,
                  elevation: 2.0,
                  child: MaterialButton(
                    onPressed: () {},
                    minWidth: MediaQuery.of(context).size.width - 100.0,
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: btnFontStyle,
                    ),
                  )),
              new SizedBox(height: 20.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                      width: icnWidth,
                      height: icnHeight,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new ExactAssetImage('assets/icons/gplus.png'),
                          fit: BoxFit.cover,
                        ),
                      )),
                  new SizedBox(width: 10.0),
                  new Container(
                      width: icnWidth,
                      height: icnHeight,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new ExactAssetImage('assets/icons/gplus.png'),
                          fit: BoxFit.cover,
                        ),
                      )),
                  new SizedBox(width: 10.0),
                  new Container(
                      width: icnWidth,
                      height: icnHeight,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new ExactAssetImage('assets/icons/gplus.png'),
                          fit: BoxFit.cover,
                        ),
                      )),

                      
                ],
              ),
              new SizedBox(height: 10.0),
                Text(
                  'By signing up you agree to the',
                  style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                  'Terms of Services',
                  style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 1.5,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  ' & ',
                  style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 1.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Privacy Policy',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.indigoAccent,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                ],)
            ],
          ),
        ),
      )),
    );
  }
}
