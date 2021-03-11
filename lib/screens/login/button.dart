import 'package:flutter/material.dart';


class button extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Column(children: <Widget>[
      Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.cyan[500],
          borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
      ),
      Padding(
        padding: EdgeInsets.all(10),
      ),
      Container(
        height: 50,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.cyan[500],
          borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
      ),
    ] 
    );

  }
}