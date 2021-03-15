import 'package:flutter/material.dart';
import '../../global/style.dart';

class IconText extends StatelessWidget {
  const IconText({
    Key key,
    this.label,
    this.icon,
  }) : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: iconColor),
        SizedBox(width: 8.0),
        Text(label, style: defaultTextStyle),
      ],
    );
  }
}