import 'package:flutter/material.dart';
import 'package:task1/Alert.dart';
import 'ActionButton.dart';

class Header extends StatelessWidget {
  const Header({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => Alert(
                    title: "Alert",
                    content: "Alert Content",
                    actions:
                      <Widget>[
                      ActionButton(title: "ok",action: ()=>Navigator.of(context).pop(), color: Colors.blue),
                      ActionButton(title: "cancel", action: ()=>Navigator.of(context).pop(), color: Colors.blue),
                    ],
                  ),
                  barrierDismissible: true
                ),
                child: const Text('Show Dialog'),
              )
          ),
          Expanded(
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                color: Colors.deepPurpleAccent,
                child: Text("الاخبار", style: TextStyle(color: Colors.white, fontSize: 20 ), textAlign: TextAlign.center)
            ),
          ),
        ],
      ),
    );
  }
}
