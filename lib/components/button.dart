// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  Button(
      {required this.text,
      this.big = false,
      this.color = DEFAULT,
      required this.cb});
  Button.big(
      {required this.text,
      this.big = true,
      this.color = DEFAULT,
      required this.cb});
  Button.operation(
      {required this.text,
      this.big = false,
      this.color = OPERATION,
      required this.cb});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
          onPressed: () => cb(text),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 32, color: Colors.white, fontWeight: FontWeight.w200),
          ),
          color: color),
    );
  }
}
