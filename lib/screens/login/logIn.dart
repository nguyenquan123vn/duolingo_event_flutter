import 'package:flutter/material.dart';

import 'Header.dart';
import 'inputWrapper.dart';

class logIn extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.white,
            Colors.white,
            Colors.white
          ]
          )
        ),
        child: Column(
          children:<Widget> [
            SizedBox(height: 88,),
            Header(),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                )
              ),
              child: inputWrapper(),
            ))
        ],),
      ),
    );
  }

}

class InputWrapper {
}