import 'package:flutter/material.dart';
import '../../../global/style.dart';

class InputBuilder extends StatefulWidget {
  const InputBuilder({Key key, this.label}) : super(key: key);

  final String label;

  @override
  InputBuilderState createState() => InputBuilderState();
}

class InputBuilderState extends State<InputBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 56.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: borderColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(widget.label, style: defaultBoldWashTextStyle),
            )));
  }
}
