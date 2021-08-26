import 'package:flutter/material.dart';
class CustomAnimatedContainer extends StatefulWidget {
  CustomAnimatedContainer({Key key, this.color, this.txt}) : super(key: key);
  var color;
  var txt;
  var width = 200.0, height = 100.0;



  @override
  _CustomAnimatedContainerState createState() => _CustomAnimatedContainerState();
}

class _CustomAnimatedContainerState extends State<CustomAnimatedContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: AnimatedContainer(
            duration: Duration(seconds: 2),
            color: widget.color,
            curve: Curves.easeInQuad,
            width: widget.width,
            height: widget.height,
            child: Center(child: Text(widget.txt, style: TextStyle(color: Colors.white),)),
        ),
        onTap: animate,
    );
  }

  animate(){
    setState(() {
      if(widget.color == Colors.red){
        widget.color = Colors.blue;
        widget.txt = "Animation Done";
        widget.width *= 1.5;
        widget.height *= 1.5;
      }else{
        widget.color = Colors.red;
        widget.txt = "AnimationStart";
        widget.width /= 1.5;
        widget.height /= 1.5;
      }
    });
  }
}
