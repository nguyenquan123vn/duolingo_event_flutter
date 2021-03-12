import 'package:flutter/material.dart';
import '../../global/style.dart';

class Button extends StatefulWidget {
  const Button({Key key, this.label, this.type, this.onPressed})
      : super(key: key);

  final String label;
  final String type;
  final Function onPressed;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45.0,
        width: double.infinity,
        decoration: BoxDecoration(
            color: widget.type == "PRIMARY"
                ? defaultBrandColor
                : defaultBackgroundColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(width: 1.0, color: borderColor),
            boxShadow: [defaultShadow]),
        child: TextButton(
          onPressed: widget.onPressed,
          child: Align(
              alignment: Alignment.center,
              child: Text(widget.label,
                  style: widget.type == "PRIMARY"
                      ? primaryBtnTextStyle
                      : whiteBtnTextStyle)),
        ));
  }
}
