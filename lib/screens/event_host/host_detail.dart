import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/global/widget/appBar.dart';
import 'components/details.dart';

class HostDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomedAppBar(
          login: true,
          reference: false,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: () => Navigator.of(context)
                        .popUntil((route) => route.isFirst),
                    child: Text(
                      "EVENTS HOME",
                      style: whiteBtnTextStyle,
                    ),
                  ),
                  Text(
                    "\t\t/\t\tHOST DASHBOARD",
                    style: disabledBtnTextStyle,
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Details(),
            ],
          ),
        ),
      ),
    );
  }
}
