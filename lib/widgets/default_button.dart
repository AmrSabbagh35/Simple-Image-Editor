import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback callback;
  final Color color;
  final Widget child;
  final Color textcolor;

  const DefaultButton(
      {super.key,
      required this.callback,
      required this.color,
      required this.textcolor,
      required this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
          textStyle: MaterialStateProperty.all<TextStyle>(
              TextStyle(color: textcolor))),
      onPressed: callback,
      child: child,
    );
  }
}
