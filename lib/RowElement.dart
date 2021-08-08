import 'package:flutter/material.dart';
class RowElement extends StatelessWidget {
  const RowElement({Key key, this.image, this.text}) : super(key: key);
  final image;
  final text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
          child: Container(
            margin: EdgeInsets.all(3),
            child: Stack(
              children: [
                Image.asset(image),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      color: Colors.blueGrey.withOpacity(0.8),
                      child: Text(text,
                        style: TextStyle(color: Colors.white,
                        ),
                      ),
                )),
              ],
            ),
          )
      ),
    );
  }
}
