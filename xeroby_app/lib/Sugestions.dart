import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xeroby_app/meu_jardim.dart';
import 'package:xeroby_app/plant_description.dart';
import 'main.dart';

class Sugestions extends StatefulWidget{
  Sugestions({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _SugestionsState createState() => _SugestionsState();

}

class _SugestionsState extends State<Sugestions> {

  TextStyle styleItalico= TextStyle(fontFamily: 'Montserrat', fontSize: 12.0, fontStyle: FontStyle.italic, color: Color(0xff16613D));
  TextStyle styleBold = TextStyle(fontFamily: 'Montserrat', fontSize: 12.0, fontWeight: FontWeight.bold, color: Color(0xff16613D));
  TextStyle styleText = TextStyle(fontFamily: 'Montserrat', fontSize: 12.0, color: Color(0xff16613D));
  Color hortela = const Color(0xffAEBCB2);

  int _selectedIndex = 0;
  var _pages = <Widget>[
    meujardim(),//this is a stateful widget on a separate file
    PlantDescription(),//this is a stateful widget on a separate file
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final nomePlanta = Text("Hortelã", textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, fontWeight: FontWeight.bold, color: Color(0xff16613D)));
    final nomeCientifico = Text("Mentha sp\n", textAlign: TextAlign.left, style: styleItalico);
    final categoriaPlanta = Text("Ervas medicinais, condimento\n", textAlign: TextAlign.left, style: styleText);
    final descricao = Text("As flores numerosas são roxas e se apresentam em inflorescências do tipo espiga. De seu óleo essencial se extrai o mentol.", textAlign: TextAlign.left, style: styleText);

    final plantColumn = Wrap(
        runSpacing: 10,
        children: <Widget>[
          SizedBox(height: 10,),
          nomeCientifico,
          categoriaPlanta,
          Text("descrição", textAlign: TextAlign.center, style: styleBold),
          descricao
        ]
    );

    final plantBox =
    Container(height: 244, width: 150, child: plantColumn,
        padding: EdgeInsets.symmetric(horizontal:10, vertical:10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: hortela));

    final curiosidades = Text("Culinária árabe\nSorvetes, sucos e doces",
        textAlign: TextAlign.left, style: styleText);
    final curiosidadesBox = Container(
      width: 155,
      child: curiosidades,
      padding: EdgeInsets.symmetric(horizontal:10, vertical:10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: hortela),
    );

    final lojaButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff714365),
      child: MaterialButton(
        minWidth: 140,
        onPressed: () {
        },
        child: Text("Ir para a loja!", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize: 12)),
      ),

    );

    final tempo = Text(" ano todo", textAlign: TextAlign.left, style: styleText);
    final calendarIcon = Icon(Icons.calendar_today, color: Color(0xff16613D), size: 15);

    final local = Text(" vai bem no Sol", textAlign: TextAlign.left, style: styleText);
    final placeIcon = Icon(Icons.place, color: Color(0xff16613D), size: 15);

    final rega = Text(" regas diárias", textAlign: TextAlign.left, style: styleText,);
    final regaIcon = Icon(Icons.alarm, color: Color(0xff16613D), size: 15);

    final caracteristica1 = Row(
      children: <Widget>[
        calendarIcon,
        tempo
      ],
    );

    final caracteristica2 = Row(
      children: <Widget>[
        placeIcon,
        local
      ],
    );

    final caracteristica3 = Row(
        children: <Widget>[
          regaIcon,
          rega
        ]
    );

    final caracteristicas = Column(
      children: <Widget>[
        caracteristica1,
        caracteristica2,
        caracteristica3
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );

    final caracteristicasBox = Container(
      width: 155,
      child: caracteristicas,
      padding: EdgeInsets.symmetric(horizontal:10, vertical:10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: hortela)
    );

    var imagem = Container(
        width: 155.0,
        child: Column(
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset('Images/hortela.jpg', fit: BoxFit.contain))
          ],
        ),
        decoration: BoxDecoration(shape: BoxShape.circle)
    );


    final fotoPainel = Column(
        children: <Widget>[
          imagem,
          SizedBox(height: 10,),
          lojaButton
        ]
    );

    final primeiraLinha = Row(
      children: <Widget>[
        plantBox,
        SizedBox(width: 20,),
        fotoPainel
      ],
    );

    final segundaLinha = Row(
      children: <Widget>[
        curiosidadesBox,
        SizedBox(width: 20,),
        caracteristicasBox
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );

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
                    SizedBox(height: 10,),
                    segundaLinha
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