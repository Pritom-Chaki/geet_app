import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  static const TextStyle textFontStyle =
      TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black);
  static const TextStyle btnFontStyle =
      TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        child: Text('Show alert'),
        onPressed: () {
          showAlertDialog(context);
        },
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the buttons

    Widget deleteButton = MaterialButton(
      height: 40.0,
      minWidth: 80.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.blue,
      child: Text(
        "Delete",
        style: btnFontStyle,
      ),
      onPressed: () {},
    );

    Widget noButton = MaterialButton(
      height: 40.0,
      minWidth: 80.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      color: Colors.yellow,
      child: Text(
        "No",
        style: btnFontStyle,
      ),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      actionsPadding: EdgeInsets.only(left: 50.0, right: 50.0),
      backgroundColor: Colors.white,
      title: new Icon(
        Icons.alarm_on,
        color: Colors.yellow,
        size: 45.0,
      ),
      content: Text(
        "Are you Sure?",
        textAlign: TextAlign.center,
        style: textFontStyle,
      ),
      actions: [
        deleteButton,
        SizedBox(width: 10.0),
        noButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
