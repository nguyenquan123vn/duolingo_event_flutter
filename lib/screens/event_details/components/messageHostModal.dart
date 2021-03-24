import 'package:flutter/material.dart';
import '../../../global/style.dart';
import 'package:duolingo_event_app/global/widget/button.dart';

class MessageHostModal extends StatelessWidget {
  const MessageHostModal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
          height: 349.0,
          width: 346.0,
          color: defaultBackgroundColor,
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Message host", style: headerTextStyle),
                    Container(
                        height: 139.0,
                        decoration: BoxDecoration(
                            color: borderColor,
                            borderRadius: BorderRadius.circular(8))),
                    Button(label: "SEND MESSAGE", type: "PRIMARY"),
                    Text("CANCEL", style: whiteBtnTextStyle),
                  ]))),
                
    );
  }
}