import 'package:flutter/material.dart';
class animationLogo extends StatefulWidget {
  animationLogo({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _animationLogo createState() => _animationLogoState();
}
class _animationLogoState extends State<animationLogo> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(flex: 1,
          child: Container(
            child: Image.asset('images/'+imgnumber.toString()+'.png'),
            height: 500,
            width:500,
            color: Colors.green,
          ),
        ),
        FlatButton(
          child: Text(BtnTxt),
          onPressed: (){
            if (varToCheckButtonPress == 0) {
              setState(() {
                BtnTxt = 'PAUSE';
                varToCheckButtonPress = 1;
              });
            } else if (varToCheckButtonPress == 1) {
              setState(() {
                BtnTxt = 'RESUME';
                varToCheckButtonPress = 0;
              });
            }
            inc();
          },
        )
      ],
    );
    );
  }
}
