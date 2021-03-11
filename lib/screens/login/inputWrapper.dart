import 'package:flutter/material.dart';

import 'button.dart';
import 'inputField.dart';

class inputWrapper extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(0)
            ),
            child: inputField() ,
          ),
          SizedBox(height: 40,),
          Text(
            "Forgot password?", 
            style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 40,),
            button()
        ],
      ),
    );
  }

}