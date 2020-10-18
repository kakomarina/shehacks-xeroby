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

  TextStyle styleItalico= TextStyle(fontFamily: 'Montserrat', fontSize: 12.0, fontStyle: FontStyle.italic, color: Color(0xff16613D));
  TextStyle styleBold = TextStyle(fontFamily: 'Montserrat', fontSize: 12.0, fontWeight: FontWeight.bold, color: Color(0xff16613D));
  TextStyle styleText = TextStyle(fontFamily: 'Montserrat', fontSize: 12.0, color: Color(0xff16613D));
  Color hortela = const Color(0xffAEBCB2);

  @override
  Widget build(BuildContext context) {

    final nomePlanta = Text("Basílio, o manjeiricão", textAlign: TextAlign.left, style: TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, fontWeight: FontWeight.bold, color: Color(0xff16613D)));
    final nomeCientifico = Text("Ocimum basilicum\n", textAlign: TextAlign.left, style: styleItalico);
    final categoriaPlanta = Text("Ervas medicinais, condimento\n", textAlign: TextAlign.left, style: styleText);
    final descricao = Text("As folhas do manjericão apresentam sabor e aroma doce e picante característico", textAlign: TextAlign.left, style: styleText);

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

    final curiosidades = Text("Vai bem com pratos que levam tomate, azeite, limão, carnes vermelhas, massas e queijos",
        textAlign: TextAlign.left, style: styleText);
    final curiosidadesBox = Container(
      width: 155,
      child: curiosidades,
      padding: EdgeInsets.symmetric(horizontal:10, vertical:10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: hortela)
    );

    final tempo = Text(" 2 meses", textAlign: TextAlign.left, style: styleText);
    final calendarIcon = Icon(Icons.calendar_today_outlined, color: Color(0xff16613D), size: 15);

    final local = Text(" área de serviço", textAlign: TextAlign.left, style: styleText);
    final placeIcon = Icon(Icons.place, color: Color(0xff16613D), size: 15);

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

    final caracteristicas = Column(
      children: <Widget>[
        caracteristica1,
        caracteristica2
      ],
    );

    final imagem = Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("Images/hortela.jpg"),
            fit: BoxFit.fill
        ),
        shape: BoxShape.circle
      ),
      child: Center(
        child: Text(""),
      )
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


    return Scaffold(
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
    );

  }

}