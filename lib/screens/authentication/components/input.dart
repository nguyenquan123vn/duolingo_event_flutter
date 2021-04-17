import 'package:flutter/material.dart';
import 'package:duolingo_event_app/global/style.dart';

class EmailPasswordFieldValidator {
  static String validate(String value) {
    return (value.isEmpty) ? 'This information should not be empty!' : null;
  }
}

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

  @override
  _InputBuilderState createState() => _InputBuilderState();
}

class _InputBuilderState extends State<InputBuilder> {
  Icon _suffixIconSwitch(label) {
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Form(
        key: widget.formKey,
        child: TextFormField(
          validator: EmailPasswordFieldValidator.validate,
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
            suffixIcon: _suffixIconSwitch(widget.label),
          ),
          obscureText: widget.label == 'Password' ? true : false,
        ),
      ),
    );
  }
}
