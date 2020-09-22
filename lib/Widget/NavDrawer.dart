import 'package:flutter/material.dart';
import 'package:geet_app/UI/user_profile.dart';

class NavDrawer extends StatefulWidget {
  //Method
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  User_Profile userOBJ = new User_Profile();
  String userName = 'UserMono';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          _createDrawerHeader(),
          SizedBox(height: 20.0,),
          _createDrawerItem(
              //icon: Icons.home,
              text: 'My Profile',
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => User_Profile()),
                  )),
          new Divider(height: 1.0, color: Colors.white,),
                    _createDrawerItem(
              //icon: Icons.home,
              text: 'Albums',
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => User_Profile()),
                  )),
          new Divider(height: 1.0, color: Colors.white,),
                    _createDrawerItem(
              //icon: Icons.home,
              text: 'Wishlists',
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => User_Profile()),
                  )),
          new Divider(height: 1.0, color: Colors.white,),
                    _createDrawerItem(
              //icon: Icons.home,
              text: 'Library',
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => User_Profile()),
                  )),
         new Divider(height: 1.0, color: Colors.white,),
                    _createDrawerItem(
              //icon: Icons.home,
              text: 'Download File',
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => User_Profile()),
                  )),
          new Divider(height: 1.0, color: Colors.white,),
                    _createDrawerItem(
              //icon: Icons.home,
              text: 'Pick Songs',
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => User_Profile()),
                  )),
          new Divider(height: 1.0, color: Colors.white,),
                    _createDrawerItem(
              //icon: Icons.home,
              text: 'Settings',
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => User_Profile()),
                  )),
          new Divider(height: 1.0, color: Colors.white,),

         // SizedBox(height: 20.0,),
          
        
        ],
      ),
    );
  }

  Widget _createDrawerHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: Stack(children: <Widget>[
          Container(
            //padding: EdgeInsets.all(20),
            child: Center(
              child: new Container(
                  width: 130.0,
                  height: 130.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      image: new ExactAssetImage('assets/user_pic.png'),
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
          ),
          Positioned(
              bottom: 12.0,
              left: 60.0,
              child: Text("",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem({String text, GestureTapCallback onTap}) {
    //{IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          /*Icon(
          icon,
          color: Color(0xFF808080),
        ),*/
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 25.0,
                  color: Colors.white),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
