import 'package:flutter/material.dart';


class meujardim extends StatelessWidget {
  var controller = PageController(
    viewportFraction: 2 / 3,
    initialPage: 1,
  );
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
        child: Wrap(
          direction: Axis.horizontal,
          children: [
            Container(
              alignment: Alignment(-0.9, 0.6),
              child: Text('Meu Jardim',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff16613D)
                ),
              ),
            ),


            Container(
              //alignment: Alignment.topRight,
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: PageView(
                controller: controller,
                scrollDirection: Axis.horizontal,
                children: <Widget>[

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 160.0,
                    color: Colors.red,
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 160.0,
                    color: Colors.blue,
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 160.0,
                    color: Colors.green,
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 160.0,
                    color: Colors.yellow,
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 160.0,
                    color: Colors.orange,
                  ),

                ],
              ),
            ),
            Container(
              alignment: Alignment(-0.9, 0.6),
              child: Text('Sugestões para você',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff16613D)
                ),
              ),
            ),


            Container(
              alignment: Alignment.topRight,
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: PageView(
                controller: controller,
                scrollDirection: Axis.horizontal,
                children: <Widget>[

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 160.0,
                    color: Colors.red,
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 160.0,
                    color: Colors.blue,
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 160.0,
                    color: Colors.green,
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 160.0,
                    color: Colors.yellow,
                  ),

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    width: 160.0,
                    color: Colors.orange,
                  ),

                ],
              ),
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