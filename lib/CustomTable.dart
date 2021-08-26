import 'package:flutter/material.dart';
class CustomTable extends StatelessWidget {
  const CustomTable({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [

        TableRow(
          children:[
            Container(
              child: Text("txt"),
            ),
            Container(
              child: Text("txt"),
            ),
            Container(
              child: Text("txt"),
            ),
          ]
        )
      ],
    );
  }
}
