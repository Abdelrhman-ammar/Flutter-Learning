import 'package:flutter/material.dart';
import 'RowElement.dart';
class MyRow extends StatelessWidget {
  const MyRow({Key key, this.image1, this.text1, this.image2,this.text2}) : super(key: key);
  final image1, image2, text1,text2;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          RowElement(image: image1,text: text1),
          RowElement(image: image2,text: text2),
        ],
      ),
    );
  }
}
