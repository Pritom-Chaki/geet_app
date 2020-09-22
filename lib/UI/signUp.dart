import 'package:flutter/material.dart';

class SignUpUi extends StatefulWidget {
  @override
  _SignUpUiState createState() => _SignUpUiState();
}

class _SignUpUiState extends State<SignUpUi> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _userName = TextEditingController();

  static const TextStyle btnFontStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
  );
  static const TextStyle inputFontStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontSize: 20.0,
  );
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
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage('assets/sign_up_back.jpg'),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.yellow, BlendMode.overlay))),
          child: SingleChildScrollView(
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
                      "Sign up",
                      style: headFontStyle,
                    ),
                    new Text(
                      "Skip",
                      style: headFontStyle,
                    ),
                  ],
                ),
                new SizedBox(height: 40.0),
                new Text("Account Registration", style: btnFontStyle),
                new SizedBox(
                  height: 60.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: new TextFormField(
                    controller: _userName,
                    style: inputFontStyle,
                    decoration: InputDecoration(
                        hintText: "User Name",
                        //icon: Icon(Icons.person_outline),
                        border: InputBorder.none),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "The name field cannot be empty";
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
                    controller: _email,
                    style: inputFontStyle,
                    decoration: InputDecoration(
                        hintText: "Email Address",
                        //icon: Icon(Icons.person_outline),
                        border: InputBorder.none),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "The email field cannot be empty";
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
                    color: Colors.yellow,
                    elevation: 2.0,
                    child: MaterialButton(
                      onPressed: () {},
                      minWidth: MediaQuery.of(context).size.width - 60.0,
                      child: Text(
                        "Sign up",
                        textAlign: TextAlign.center,
                        style: btnFontStyle,
                      ),
                    )),
                new SizedBox(height: 10.0),
                new Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      image: new ExactAssetImage('assets/logo.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
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
        ),
      ),
    );
  }
}
