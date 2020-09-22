import 'package:flutter/material.dart';

class BottomItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      decoration: BoxDecoration(
          color: Colors.blueGrey[50],
          borderRadius: BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
     
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
         Padding(
                padding: EdgeInsets.only( bottom: 2.0),
                child: new Stack(
                  fit: StackFit.loose,
                  children: <Widget>[
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                       new Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 5.0,
                      ),
                      new Icon(
                        Icons.file_download,
                        color: Colors.black,
                        size: 5.0,
                      ),
                      new Icon(
                        Icons.folder,
                        color: Colors.black,
                        size: 5.0,
                      ),
                      ],
                    ),
                    new Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Text('Search',
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 5.0,
                                //fontFamily: 'sans-serif-light',
                                color: Colors.black)),
                        new Text('Download File',
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 5.0,
                                //fontFamily: 'sans-serif-light',
                                color: Colors.black)),
                        new Text('Library',
                            style: TextStyle(
                                fontWeight: FontWeight.w200,
                                fontSize: 5.0,
                                //fontFamily: 'sans-serif-light',
                                color: Colors.black)),
                      ],
                    )
                  ],
                ),
              ),

        ],

      ),
    );
  }

  
}
