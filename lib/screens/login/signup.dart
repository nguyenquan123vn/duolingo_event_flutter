import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import './screens/event_details/event_detail.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
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
                "Create your profile",
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
                      border: OutlineInputBorder(), labelText: "Age"),
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
                      border: OutlineInputBorder(), labelText: "Name"),
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
                child: ElevatedButton(child: Text("CREATE ACCOUNT"), onPressed: () {}),
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
