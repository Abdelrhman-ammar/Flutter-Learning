import 'package:flutter/material.dart';
class ActionButton extends StatelessWidget {
  final action, title, color;
  const ActionButton({Key key, this.title, this.action, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: action,
        child: Text(this.title, style: TextStyle(color: this.color))
    );
  }
}

