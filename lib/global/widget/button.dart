import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';

class Button extends StatefulWidget {
  const Button({
    Key key,
    this.icon,
    this.label,
    this.type,
    @required this.onPressed,
  }) : super(key: key);
  final Image icon;
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
          color: widget.type == 'PRIMARY'
              ? defaultBrandColor
              : defaultBackgroundColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
              width: 1.0,
              color:
                  widget.type == 'PRIMARY' ? defaultBrandColor : borderColor),
          boxShadow: [
            widget.type == 'PRIMARY' ? primaryShadow : defaultShadow
          ]),
      child: TextButton(
        child: Align(
          alignment: Alignment.center,
          child: (widget.icon != null)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                      widget.icon,
                      SizedBox(width: 10.0),
                      Text(
                        widget.label,
                        style: whiteBtnTextStyle,
                      ),
                    ])
              : Text(
                  widget.label,
                  style: widget.type == 'PRIMARY'
                      ? primaryBtnTextStyle
                      : whiteBtnTextStyle,
                ),
        ),
        onPressed: widget.onPressed,
      ),
    );
  }
}
