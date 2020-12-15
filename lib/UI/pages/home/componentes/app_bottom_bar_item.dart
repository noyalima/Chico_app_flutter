import 'package:flutter/material.dart';

class AppBottomBarItem extends StatelessWidget {
  final Icon icon;
  final VoidCallback onPressed;
  final String label;
  const AppBottomBarItem({
    this.icon,
    this.onPressed,
    this.label,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        IconButton(
            color: Colors.white,
            icon: icon,
            padding: EdgeInsets.all(0.0),
            onPressed: onPressed),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
          ),
        )
      ],
    ));
  }
}