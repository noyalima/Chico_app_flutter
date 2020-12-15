import 'package:flutter/material.dart';
import 'package:helloworld/core/color.dart';

class AppPrimaryButton extends RaisedButton {
  const AppPrimaryButton(
      {VoidCallback onPressed,
      Widget child,
      EdgeInsetsGeometry padding,
      Key key})
      : super(
          child: child,
          padding: padding ?? const EdgeInsets.symmetric(vertical: 24.0),
          onPressed: onPressed,
          key: key,
          color: appPrimaryDarkColor,
          textColor: Colors.white,
          elevation: 1.0,
        );
}