import 'package:flutter/material.dart';


class meujardim extends StatelessWidget {
  meujardim({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu, color: Color(0xff16613D)),
                onPressed: () { Scaffold.of(context).openDrawer(); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: const Text('',
          style: TextStyle(color: Color(0xff16613D), fontWeight: FontWeight.bold)
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.person_outline, color: Color(0xff16613D)), onPressed: () {}),
          ],
    ),
      body:  Container(
          alignment: Alignment.topRight,
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 10.0,
              ),
              Container(
                width: 160.0,
                color: Colors.red,
              ),
              Container(
                width: 10.0,
              ),
              Container(
                width: 160.0,
                color: Colors.blue,
              ),
              Container(
                width: 10.0,
              ),
              Container(
                width: 160.0,
                color: Colors.green,
              ),
              Container(
                width: 10.0,
              ),
              Container(
                width: 160.0,
                color: Colors.yellow,
              ),
              Container(
                width: 10.0,
              ),
              Container(
                width: 160.0,
                color: Colors.orange,
              ),
              Container(
                width: 10.0,
              ),
            ],
          ),


    ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xff16613D)),
            title: Text("Página Inicial",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xff16613D),
                )
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stars, color: Color(0xff16613D)),
            title: Text("Meu Jardim",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xff16613D),
                )
            ),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Color(0xff16613D)),
            title: Text("Pesquisar",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xff16613D),
                )
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none, color: Color(0xff16613D)),
            title: Text("Notificações",

                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xff16613D),

                )
            ),
          ),
        ],

    ),

    );
  }
}