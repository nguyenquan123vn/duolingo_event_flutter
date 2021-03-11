import "package:flutter/material.dart";

import 'package:flutter/material.dart';

class inputField extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(children: <Widget>[
      Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey[200])
          )
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Email",
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none
            ),
          ),

      ),
      Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey[200])
          )
        ),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Password",
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none
            ),
          ),

      )
    ],
    );
  }

}