import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'DUOLINGO events',
            style: GoogleFonts.paytoneOne(
              color: Colors.white,
              fontSize: 18,
              letterSpacing: 1.75,
            ),
          ),
          actions: <Widget>[
            Container(
              width: 103,
              height: 105.1,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: Text('LOGIN',
                    style: GoogleFonts.roboto(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.17)),
              ),
            ),
          ],
        ),
        body: Container(
          width: 411.4,
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 0, horizontal: 0)),
                    child: Text(
                      "EVENTS HOME",
                      style: GoogleFonts.roboto(
                        color: Color(0xff1cb0f6),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.17,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.50),
                  Text(
                    "/  ONLINE EVENT",
                    style: TextStyle(
                      color: Color(0xff7c8894),
                      fontSize: 14,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.17,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 207,
                height: 30,
                child: Text(
                  "Duolingo Online Events",
                  style: GoogleFonts.roboto(
                    color: Color(0xff384047),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.watch_later),
                  SizedBox(
                    width: 5.5,
                  ),
                  Text(
                    "Thursday March 4 at 9:30 PM to 10:30 PM GMT+07",
                    style: TextStyle(
                      color: Color(0xff67717a),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 5.5,
                  ),
                  Text(
                    "22 spots left",
                    style: TextStyle(
                      color: Color(0xff67717a),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: 379,
                height: 40,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 0,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text('RESERVE SPOT',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.17)),
                ),
              ),
              Divider(
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),
              SizedBox(
                width: 207,
                height: 30,
                child: Text(
                  "Details",
                  style: GoogleFonts.roboto(
                    color: Color(0xff384047),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: 113,
                height: 30,
                child: Text(
                  "24 attending",
                  style: TextStyle(
                    color: Color(0xff67717a),
                    fontSize: 18,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 46,
              ),
              Row(
                children: [
                  Icon(Icons.messenger),
                  SizedBox(
                    width: 5.5,
                  ),
                  Text(
                    "Hosted in Spanish",
                    style: TextStyle(
                      color: Color(0xff67717a),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.people),
                  SizedBox(
                    width: 5.5,
                  ),
                  Text(
                    "Beginner",
                    style: TextStyle(
                      color: Color(0xff67717a),
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),
              SizedBox(
                width: 207,
                height: 30,
                child: Text(
                  "About the event",
                  style: GoogleFonts.roboto(
                    color: Color(0xff384047),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: 379,
                height: 100,
                child: Text(
                  "Hola a Spanish Lovers 👋 !\n"
                  "Improve your spoken Spanish! You are studying Spanish but you don't get a chance to practice speaking? Our dynamic conversation class is aimed at those who want to practice or fine tune their Spanish in a structured class, guided by our experienced teacher: Cecilia from Mexico City!",
                  style: TextStyle(
                    color: Color(0xff67717a),
                    fontSize: 12,
                  ),
                ),
              ),
              Container(
                width: 379,
                height: 40,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 0,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text('READ MORE',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.17)),
                ),
              ),
              Divider(
                height: 20,
                thickness: 1,
                indent: 0,
                endIndent: 0,
              ),
              SizedBox(
                width: 207,
                height: 30,
                child: Text(
                  "About the Host",
                  style: GoogleFonts.roboto(
                    color: Color(0xff384047),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                width: 379,
                height: 40,
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 0,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  child: Text('CONTACT HOST',
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.17)),
                ),
              ),
            ],
          ),
        ));
  }
}
