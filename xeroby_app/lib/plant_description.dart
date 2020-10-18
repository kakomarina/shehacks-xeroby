import 'dart:io';

import 'package:flutter/material.dart';
import 'package:xeroby_app/meu_jardim.dart';
import 'main.dart';

class PlantDescription extends StatefulWidget{
  PlantDescription({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _DescriptionState createState() => _DescriptionState();

}

class _DescriptionState extends State<PlantDescription> {

  TextStyle styleItalico= TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, fontStyle: FontStyle.italic, color: Color(0xff16613D));
  TextStyle styleBold = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, fontWeight: FontWeight.bold, color: Color(0xff16613D));
  TextStyle styleText = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Color(0xff16613D));
  Color hortela = const Color(0xffAEBCB2);

  @override
  Widget build(BuildContext context) {

    final nomePlanta = Text("Nome", textAlign: TextAlign.left, style: styleBold);
    final nomeCientifico = Text("Nome Cientifico", textAlign: TextAlign.left, style: styleItalico);
    final categoriaPlanta = Text("Categoria", textAlign: TextAlign.left, style: styleText);
    final descricao = Text("Descricao textao", textAlign: TextAlign.left, style: styleText);

    final plantColumn = Column(
      children: <Widget>[
        nomeCientifico,
        categoriaPlanta,
        Text("descrição", textAlign: TextAlign.center, style: styleBold),
        descricao
      ]
    );

    final plantBox =
        Container(height: 244, width: 150, child: plantColumn, color: hortela);

    final curiosidades = Text("curiosidades", textAlign: TextAlign.left, style: styleText);
    final curiosidadesBox = Container(
      width: 155,
      child: curiosidades,
      color: hortela
    );

    final caracteristicas = Text("caracteristica\ncaracteristica\ncaracteristica",
        textAlign: TextAlign.left, style: styleText);


    final imagem = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("Images/hortela.jpg"),
            fit: BoxFit.cover
        ),
        shape: BoxShape.circle
      ),
    );


    final fotoPainel = Column(
      children: <Widget>[
        imagem,
        caracteristicas
      ]
    );

    final primeiraLinha = Row(
      children: <Widget>[
        plantBox,
        SizedBox(width: 20,),
        fotoPainel
      ],
    );


    int _selectedIndex = 0;
    final _pages = <Widget>[
      MyHomePage(),//this is a stateful widget on a separate file
      meujardim(),//this is a stateful widget on a separate file
      PlantDescription(),//this is a stateful widget on a separate file
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

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
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              children: <Widget>[
                nomePlanta,
                SizedBox(height: 20),
                primeiraLinha,
                SizedBox(height: 40),
                Text("Saiba mais", textAlign: TextAlign.left, style: styleBold),
                curiosidadesBox
              ]
            )
          ),
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,

      ),
    );

  }

}