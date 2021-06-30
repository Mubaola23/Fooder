import 'package:flutter/material.dart';

import '../../core/constants.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool showCounterText;
  final Widget suffix;
  final bool obscureText;
  final Widget prefixIcon;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String) validator;
  final bool enabled;
  final Function(String) onFieldSubmitted;
  final Function(String) onSaved;
  final TextInputAction textInputAction;
  final int maxlength;
  final InputBorder border;
  final InputBorder enabledBorder;
  final int maxLines;
  final Widget suffixIcon;
  final void Function(String) onChanged;
  final Color borderColor;
  final Color textColor;
  final double height;
  final String value;

  const AppTextField({
    Key key,
    this.labelText,
    this.hintText,
    this.controller,
    this.suffixIcon,
    this.enabled,
    this.onChanged,
    this.maxLines,
    this.suffix,
    this.obscureText,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.borderColor,
    this.textColor = Colors.black87,
    this.showCounterText,
    this.prefixIcon,
    this.onFieldSubmitted,
    this.maxlength,
    this.border,
    this.enabledBorder,
    this.height,
    this.onSaved,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: value,
      onSaved: onSaved,
      controller: controller,
      style: bodyText1(context),
      onChanged: onChanged,
      maxLines: maxLines ?? 1,
      maxLength: maxlength,
      validator: validator,
      keyboardType: keyboardType,
      enabled: enabled,
      textInputAction: textInputAction ?? TextInputAction.next,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: bodyText2(context),
        prefixIcon: prefixIcon,
        counterText: '',
        suffixIcon: suffixIcon,
        suffix: suffix,
        labelText: labelText,
        labelStyle: bodyText2(context),
        border: InputBorder.none,
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade900, width: 1),
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.red.shade900, width: 1),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Colors.grey, width: 1),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? kSecondaryColor,
            width: 2,
          ),
        ),
        disabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1),
        ),
      ),
    );
  }
}
