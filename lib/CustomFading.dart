import 'package:flutter/material.dart';
class CustomFading extends StatefulWidget {
  const CustomFading({Key key}) : super(key: key);
  @override
  _CustomFadingState createState() => _CustomFadingState();
}

class _CustomFadingState extends State<CustomFading> with SingleTickerProviderStateMixin{

  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(seconds: 10)
    );

    _animation = Tween(
      begin: 0.0,
      end: 1.0
    ).animate(_animationController);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        width: 40,
        height: 40,
        color: Colors.red,
      ),
    );
  }
}
