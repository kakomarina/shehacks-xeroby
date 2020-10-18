import 'package:flutter/material.dart';
import 'package:xeroby_app/AdicionarPlanta.dart';
import 'package:xeroby_app/meu_jardim.dart';
import 'package:xeroby_app/plant_description.dart';


class InsideContent extends StatefulWidget {
  InsideContent({Key key}) : super(key: key);

  @override
  _ContentState createState() => _ContentState();

}

class _ContentState extends State<InsideContent> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  var _pages = <Widget>[
    meujardim(),//this is a stateful widget on a separate file
    PlantDescription(),//this is a stateful widget on a separate file
    AdicionarPlanta(),//this is a stateful widget on a separate file

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      body: Center(
        child: _pages.elementAt(_selectedIndex),
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

      ),
    );
  }

}
