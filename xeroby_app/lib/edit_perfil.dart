import 'package:flutter/material.dart';
import 'main.dart';
import 'package:xeroby_app/InsidedContent.dart';
class editperfil extends StatefulWidget{
  editperfil({Key key,}): super(key: key);

  @override
  _editperfil createState()=> _editperfil();
}


class _editperfil extends State<editperfil> {
  var pressedCasa = false ;
  var pressedApartamento = false;
  @override
  Widget build(BuildContext context) {

    final nomeField = TextField(
      obscureText: false,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "nome completo",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );
    final idadeField = TextField(
      obscureText: false,
      keyboardType: TextInputType.number,

      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "idade",

          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );
    final ufField = TextField(
      obscureText: false,

      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "UF",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );
    final cidadeField = TextField(
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "cidade",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );
    final detalhesField = TextField(
      obscureText: false,

      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "mais detalhes sobre o ambiente",

          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );
    final n_moradoresField = TextField(
      obscureText: false,
      keyboardType: TextInputType.number,

      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "quantos moram na casa",


          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );
    final salvarButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xFF8DAF5C),
      child: MaterialButton(
        minWidth: 200.0,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InsideContent()),
            );},
        child: Text("Salvar",

            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final casaButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: pressedCasa? Color(0xFF8DAF5C): Color(0xffaebcb2),
      child: MaterialButton(
        minWidth: 200.0,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          setState(() {
            pressedCasa =
            !pressedCasa; // update the state of the class to show color change
            pressedApartamento = false;
          });
        },
        child: Text("cidade",

            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final apartamentoButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: pressedApartamento? Color(0xFF8DAF5C): Color(0xffaebcb2),
      child: MaterialButton(
        minWidth: 200.0,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          setState(() {
            pressedApartamento =
            !pressedApartamento;
            pressedCasa = false;
          });
        },
        child: Text("apê",

            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    int _selectedIndex;


    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
          automaticallyImplyLeading: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(icon:Icon(Icons.arrow_back),color: Color(0xff16613D),
              onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InsideContent()),
                );}
          ),
          title: const Text('Edite seu perfil',
          style: TextStyle(color: Color(0xff16613D), fontWeight: FontWeight.bold)
          ),
      ),
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                nomeField,
                SizedBox(height: 25.0),
                idadeField,
                SizedBox(height: 25.0),
                Row(
                    children: <Widget>[
                      Container(
                        width: 100.0,
                        child: ufField,
                      ),
                      SizedBox(width: 25.0),
                      Container(
                        width: 100.0,
                        child: cidadeField,
                      ),
                      ]
                ),
                SizedBox(height: 25.0),
                Row(
                    children: <Widget>[
                      Container(
                        width: 100.0,
                        child: casaButon ,
                      ),
                      SizedBox(width: 25.0),
                      Container(
                        width: 100.0,
                        child: apartamentoButon,
                      ),
                    ]
                ),
                SizedBox(height: 25.0),
                detalhesField,
                SizedBox(height: 25.0),
                n_moradoresField,
                SizedBox(
                  height: 35.0,
                ),
                salvarButon,

              ],
            ),
          ),
        ),
      ),
    );
  }
}