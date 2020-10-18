import 'dart:io';

import 'package:flutter/cupertino.dart';
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
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: hortela),
    );

    final sugestoes = Text("Óleos essenciais: o manjericão ajuda a relaxar! Que tal experimentar?", textAlign: TextAlign.left, style: styleText,);
    final lojaButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff714365),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {

        },
        child: Text("Ir para a loja!", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontFamily: 'Montserrat', fontSize: 12)),
      ),

    );

    final sugestoesColumn = Column(
      children: <Widget>[
        sugestoes,
        SizedBox(height: 15,),
        lojaButton
      ],
    );

    final sugestoesBox = Container(
      width: 155,
      child: sugestoesColumn,
        padding: EdgeInsets.symmetric(horizontal:10, vertical:10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: hortela)
    );

    final tempo = Text(" 2 meses", textAlign: TextAlign.left, style: styleText);
    final calendarIcon = Icon(Icons.calendar_today, color: Color(0xff16613D), size: 15);

    final local = Text(" área de serviço", textAlign: TextAlign.left, style: styleText);
    final placeIcon = Icon(Icons.place, color: Color(0xff16613D), size: 15);

    final rega = Text(" a cada 2 dias", textAlign: TextAlign.left, style: styleText,);
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
    

    var imagem = Container(
        width: 155.0,
        child: Column(
          children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.circular(50.0),
            child: Image.asset('Images/manjericao.png', fit: BoxFit.contain))
          ],
        ),
        decoration: BoxDecoration(shape: BoxShape.circle)
    );


    final fotoPainel = Column(
      children: <Widget>[
        imagem,
        SizedBox(height: 10,),
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

    final segundaLinha = Row(
      children: <Widget>[
        curiosidadesBox,
        SizedBox(width: 20,),
        sugestoesBox
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(height: 10,),
                segundaLinha
              ]
            )
          ),
        ),
      ),
    );

  }

}