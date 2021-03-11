import 'package:flutter/material.dart';
import '../../../global/style.dart';

class DropdownBar extends StatelessWidget {
  const DropdownBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: double.infinity,
      decoration: BoxDecoration(
          color: defaultBackgroundColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1.0, color: borderColor),
          boxShadow: [defaultShadow]),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title, style: defaultBoldTextStyle),
            Icon(Icons.keyboard_arrow_down_rounded,
                color: iconColor)
          ],
        ),
      ),
    );
  }
}
