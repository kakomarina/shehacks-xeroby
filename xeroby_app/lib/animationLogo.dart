import 'package:flutter/material.dart';
import 'dart:async';
import 'main.dart';
import 'package:xeroby_app/InsidedContent.dart';
class animationLogo extends StatefulWidget{
  animationLogo({Key key,}): super(key: key);

  @override
  _animationLogo createState()=> _animationLogo();
}

class _animationLogo extends State<animationLogo> with TickerProviderStateMixin{
  AnimationController controller;
  Animation growAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(seconds: 3));
    growAnimation = Tween<double>(begin: 0, end: 200).animate(controller);
    controller.forward();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(

        mainAxisAlignment : MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(milliseconds: 900),
              alignment: Alignment(0, 4),
            child: Image.asset(
              'Images/icon-1.png', width: 200.0, height: 200.0,
            ),
          ),


        ],
      ),
    );
  }

}