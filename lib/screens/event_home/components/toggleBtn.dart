import 'package:flutter/material.dart';

class ToggleBtn extends StatelessWidget {
  const ToggleBtn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 39.0,
        width: 63.0,
        decoration: BoxDecoration(
          color: Color.fromRGBO(229, 229, 229, 1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: (Container(
                height: 26.0,
                width: 26.0,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.circular(50),
                ))),
          ),
        ));
  }
}