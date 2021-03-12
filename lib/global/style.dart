import 'package:flutter/material.dart';

const Color defaultBackgroundColor = Color.fromRGBO(255, 255, 255, 1);

const Color defaultBrandColor = Color.fromRGBO(28, 176, 246, 1);

const Color defaultTextColor = Color.fromRGBO(56, 64, 71, 1);

const Color reverseTextColor = Color.fromRGBO(255, 255, 255, 1);

const Color washTextColor = Color.fromRGBO(124, 136, 148, 1); // Can use for input label

const Color borderColor = Color.fromRGBO(235, 236, 237, 1);

const Color iconColor = Color.fromRGBO(124,136,148,0.78);

const TextStyle defaultTextStyle =
    TextStyle(fontFamily: 'Roboto', fontSize: 13, color: defaultTextColor, height: 2);

const TextStyle appBarTextStyle =
    TextStyle(fontFamily: 'Monsserat', fontSize: 24, color: reverseTextColor);

const TextStyle defaultBoldWashTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 13,
    color: washTextColor,
    fontWeight: FontWeight.bold);

const TextStyle defaultBoldTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 13,
    color: defaultTextColor,
    fontWeight: FontWeight.bold);

const TextStyle primaryBtnTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    color: reverseTextColor,
    fontWeight: FontWeight.bold);

const TextStyle whiteBtnTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 14,
    color: defaultBrandColor,
    fontWeight: FontWeight.bold);


const TextStyle headerTextStyle = TextStyle(
    fontFamily: 'Roboto',
    fontSize: 20,
    color: defaultTextColor,
    fontWeight: FontWeight.bold);

BoxShadow defaultShadow = BoxShadow(
  color: Color.fromRGBO(235, 236, 237, 1),
  spreadRadius: 0,
  blurRadius: 0,
  offset: Offset(0, 2),
);
