import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';
import 'package:duolingo_event_app/screens/authentication/components/validator.dart';

class InputBuilder extends StatefulWidget {
  const InputBuilder({
    Key key,
    this.label,
    this.controller,
    this.formKey,
  }) : super(key: key);

  final String label;
  final TextEditingController controller;
  final GlobalKey formKey;

  Icon get suffixIconSwitch {
    switch (label) {
      case 'Password':
        return Icon(Icons.lock, color: iconColor);
      case 'Email':
        return Icon(Icons.mail, color: iconColor);
      case 'Username':
        return Icon(Icons.people, color: iconColor);
        break;
      default:
        return null;
    }
  }

  Function get labelValidate {
    switch (label) {
      case 'Password':
        return EmailPasswordFieldValidator.passwordValidate;
      case 'Email':
        return EmailPasswordFieldValidator.emailValidate;
      case 'Username':
        return EmailPasswordFieldValidator.usernameValidate;
        break;
      default:
        return null;
    }
  }

  @override
  _InputBuilderState createState() => _InputBuilderState();
}

class _InputBuilderState extends State<InputBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Form(
        key: widget.formKey,
        child: TextFormField(
          validator: widget.labelValidate,
          controller: widget.controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(8.0),
              ),
            ),
            filled: true,
            fillColor: borderColor,
            hintText: widget.label,
            hintStyle: defaultBoldWashTextStyle,
            errorStyle: dangerTextStyle,
            suffixIcon: widget.suffixIconSwitch,
          ),
          obscureText: widget.label == 'Password' ? true : false,
        ),
      ),
    );
  }
}
