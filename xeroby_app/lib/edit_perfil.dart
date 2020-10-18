import 'package:flutter/material.dart';
import 'main.dart';

class createPage extends StatefulWidget {
  createPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _createState createState() => _createState();
}

class _createState extends State<createPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "email",
          suffixIcon: Icon(Icons.alternate_email),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );
    final nameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "nome",
          suffixIcon: Icon(Icons.person_outline),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );
    final nicknameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "sobrenome",
          suffixIcon: Icon(Icons.person_outline),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "senha",
          suffixIcon: Icon(Icons.lock_outline),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );
    final confirmpasswordField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "confirmar senha",
          suffixIcon: Icon(Icons.lock),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xFF8DAF5C),
      child: MaterialButton(
        minWidth: 200.0,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Login",

            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final returnButon = FlatButton(

      child: MaterialButton(
        minWidth: 200.0,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyHomePage()),
          );},
        child: Text("Voltar a tela anterior",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 15.0, color: Colors.black, decoration: TextDecoration.underline, fontStyle: FontStyle.italic)),
      ),
    );
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(icon:Icon(Icons.arrow_back),color: Color(0xff16613D),
              onPressed:() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );}
          )
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
                emailField,
                SizedBox(height: 25.0),
                nameField,
                SizedBox(height: 25.0),
                nicknameField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(height: 25.0),
                confirmpasswordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,

              ],
            ),
          ),
        ),
      ),
    );
  }
}