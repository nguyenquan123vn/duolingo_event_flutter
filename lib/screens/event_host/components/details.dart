import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/button.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Text(
                  'Your Events',
                  style: headerTextStyle,
                ),
              ),
              Container(
                width: 130,
                child: Button(
                  label: '+ NEW EVENT',
                  type: 'WHITE',
                  onPressed: () => Navigator.of(context).pushNamed('/apply'),
                ),
              ),
            ],
          ),
          Divider(
            height: 50.0,
            thickness: 1.0,
          ),
          Center(
            child: CircularProgressIndicator(strokeWidth: 7.0),
          ),
          Divider(
            height: 50.0,
            thickness: 1.0,
          ),
          Expanded(
            child: Button(
              label: 'LOGOUT',
              type: 'WHITE',
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ),
        ],
      ),
    );
  }
}
