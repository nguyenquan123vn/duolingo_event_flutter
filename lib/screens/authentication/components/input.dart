import 'package:flutter/material.dart';
import '../../../global/style.dart';

class InputBuilder extends StatefulWidget {
  const InputBuilder({Key key, this.label, this.controller, this.formKey})
      : super(key: key);

  final String label;
  final TextEditingController controller;
  final GlobalKey formKey;

  @override
  InputBuilderState createState() => InputBuilderState();
}

class InputBuilderState extends State<InputBuilder> {
  Icon suffixIconSwitch(label) {
    switch (label) {
      case "Password":
        return Icon(Icons.lock, color: iconColor);
      case "Email":
        return Icon(Icons.mail, color: iconColor);
      case "Username":
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
            validator: (value) {
              if (value.isEmpty) {
                return '${widget.label} should not empty!';
              }
              return null;
            },
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
                suffixIcon: suffixIconSwitch(widget.label),
            ),
            obscureText: widget.label == 'Password' ? true : false,
          ),
        ));
  }
}
