import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();
}

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Login",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: 50,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Email"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: 50,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "Password"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                height: 35,
                width: 350,
                child: ElevatedButton(child: Text("LOGIN"), onPressed: () {}),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: SizedBox(
                height: 35,
                width: 350,
                child: ElevatedButton(child: Text("SIGN UP"), onPressed: () {}),
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 150,
                  child:
                      OutlinedButton(child: Text("FACEBOOK"), onPressed: () {}),
                ),
                SizedBox(
                  width: 150,
                  child:
                      OutlinedButton(child: Text("GOOGLE"), onPressed: () {}),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: SizedBox(
                height: 100,
                width: 250,
                child: Text(
                  "By signing in to Duolingo, you aggre to our Terms and Privacy Policy.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
