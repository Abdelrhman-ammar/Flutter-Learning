import 'package:flutter/material.dart';
class Alert extends StatelessWidget {
  final content, title, actions;
  const Alert({Key key, this.title,this.content, this.actions}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(this.title),
      content: Text(this.content),
      actions: this.actions
    );
  }
}
