import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  AuthTextField({
    @required this.hintText,
    @required this.focusNode,
    @required this.fieldKey,
    @required this.textInputAction,
    @required this.validator,
    @required this.onSaved,
    this.keyboardType,
    this.onFieldSubmitted,
    this.obscureText = false,
  });
  final String hintText;
  final FocusNode focusNode;
  final ValueKey fieldKey;
  final TextInputAction textInputAction;
  final Function validator;
  final Function onSaved;
  final TextInputType keyboardType;
  final Function onFieldSubmitted;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      cursorColor: Theme.of(context).primaryColor,
      style: TextStyle(color: Theme.of(context).primaryColor),
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(12.0),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
      focusNode: focusNode,
      key: fieldKey,
      textInputAction: textInputAction,
      validator: validator,
      onSaved: onSaved,
      keyboardType: keyboardType,
      onFieldSubmitted: onFieldSubmitted,
      obscureText: obscureText,
    );
  }
}
