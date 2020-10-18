import 'package:flutter/material.dart';
import 'main.dart';

class PlantDescription extends StatefulWidget{
  PlantDescription({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _DescriptionState createState() => _DescriptionState();

}

class _DescriptionState extends State<PlantDescription> {

  TextStyle styleItalico= TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, fontStyle: FontStyle.italic);
  TextStyle styleBold = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, fontWeight: FontWeight.bold);
  TextStyle styleText = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
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
    
    final foto = Image.asset("Images/hortela", fit: BoxFit.fill);

    final fotoCircular = ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: foto,
    );

    final fotoPainel = Column(
      children: <Widget>[
        fotoCircular,
        caracteristicas
      ]
    );

    final primeiraLinha = Row(
      children: <Widget>[
        plantBox,
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
                primeiraLinha,
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