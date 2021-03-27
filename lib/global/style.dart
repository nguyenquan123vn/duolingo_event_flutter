import 'package:flutter/material.dart';

const Color logoColor = Color.fromRGBO(89, 204, 3, 1.0);

const Color defaultBackgroundColor = Color.fromRGBO(255, 255, 255, 1.0);

const Color themedBackgroundColor =
    Color.fromRGBO(34, 32, 72, 1.0); // Dark blue

const Color defaultBrandColor = Color.fromRGBO(28, 176, 246, 1.0);

const Color defaultTextColor = Color.fromRGBO(56, 64, 71, 1.0);

const Color reverseTextColor = Color.fromRGBO(255, 255, 255, 1.0);

const Color washTextColor =
    Color.fromRGBO(124, 136, 148, 1.0); // Can use for input label

const Color borderColor = Color.fromRGBO(235, 236, 237, 1.0);

const Color iconColor = Color.fromRGBO(124, 136, 148, 0.78);

const Color warnColor = Color.fromRGBO(235, 67, 53, 1.0);

const Color dangerColor = Color.fromRGBO(255, 150, 0, 1.0);

const TextStyle logoTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 40,
  color: logoColor,
  fontWeight: FontWeight.bold,
);

const TextStyle defaultTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14,
  color: defaultTextColor,
);

const TextStyle defaultParaStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14,
  color: defaultTextColor,
  height: 1.5,
);

const TextStyle appBarTextStyle = TextStyle(
  fontFamily: 'Monsserat',
  fontSize: 20,
  color: reverseTextColor,
  fontWeight: FontWeight.bold,
);

const TextStyle appBarTextStyleNormal = TextStyle(
  fontFamily: 'Monsserat',
  fontSize: 16,
  color: reverseTextColor,
  fontWeight: FontWeight.normal,
);

const TextStyle defaultBoldWashTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14,
  color: washTextColor,
  fontWeight: FontWeight.bold,
);

const TextStyle defaultBoldTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14,
  color: defaultTextColor,
  fontWeight: FontWeight.bold,
);

const TextStyle primaryBtnTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14,
  color: reverseTextColor,
  fontWeight: FontWeight.bold,
);

const TextStyle dangerTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14,
  color: warnColor,
  fontWeight: FontWeight.bold,
);

const TextStyle warnTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14,
  color: Colors.orange,
  fontWeight: FontWeight.bold,
);

const TextStyle whiteBtnTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14,
  color: defaultBrandColor,
  fontWeight: FontWeight.bold,
);

const TextStyle disabledBtnTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 14,
  color: washTextColor,
  fontWeight: FontWeight.bold,
);

const TextStyle headerTextStyle = TextStyle(
  fontFamily: 'Roboto',
  fontSize: 20,
  color: defaultTextColor,
  fontWeight: FontWeight.bold,
);

BoxShadow defaultShadow = BoxShadow(
  color: Color.fromRGBO(235, 236, 237, 1),
  spreadRadius: 0,
  blurRadius: 0,
  offset: Offset(0, 2),
);

BoxShadow primaryShadow = BoxShadow(
  color: Color.fromRGBO(24, 153, 214, 1),
  spreadRadius: 0,
  blurRadius: 0,
  offset: Offset(0, 2),
);
