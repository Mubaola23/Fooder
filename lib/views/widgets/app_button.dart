import 'package:flutter/material.dart';
import 'package:fooder/core/constants.dart';

class AppButton extends StatelessWidget {
  final Function onPressed;
  final Color color;
  final Color textColor;
  final bool isLoading;
  final String label;
  final EdgeInsets padding;
  final double fontSize;
  final BorderRadius borderRadius;

  const AppButton(
      {Key key,
      @required this.onPressed,
      this.color = kSecondaryColor,
      this.textColor = Colors.white,
      this.isLoading = false,
      this.padding,
      this.borderRadius,
      @required this.label,
      this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: isLoading ? null : onPressed,
      color: color,
      textColor: textColor,
      padding: EdgeInsets.symmetric(
          vertical: responsive8(context), horizontal: responsive8(context)),
      child: Text(
        label,
        style: TextStyle(fontSize: fontSize),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(10),
      ),
    );
  }
}
