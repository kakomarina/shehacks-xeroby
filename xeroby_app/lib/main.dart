import 'package:flutter/material.dart';
import 'package:xeroby_app/InsidedContent.dart';
import 'login_page.dart';
import 'meu_jardim.dart';
import 'AdicionarPlanta.dart';
import 'plant_description.dart';
import 'create_page.dart';
import 'animationLogo.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final NameXeroby = Material(
      child:  Text("xe r-oby",
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 20.0,color: Color(0xff16613D), fontWeight: FontWeight.bold)
      ),
    );
    final DescriptionXeroby = Material(
      child:  Text("(tupi) eu sou verde",
          textAlign: TextAlign.left,
          style: TextStyle(
              fontSize: 15.0,color: Color(0xff16613D), fontStyle: FontStyle.italic)
      ),

    );
    final emailField = TextField(
      obscureText: false,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "email",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "senha",
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
        onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InsideContent()),
        );},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final createButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xFF8DAF5C),
      child: MaterialButton(
        minWidth: 200.0,
        //minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
        Navigator.push(
        context,
        //MaterialPageRoute(builder: (context) => createPage()),
          MaterialPageRoute(builder: (context) => createPage()),
      );},
        child: Text("Criar Conta",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,color: Colors.white, fontWeight: FontWeight.bold)
        ),
      ),
    );
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "Images/icon-1.png",
                    fit: BoxFit.contain,
                  ),
                ),
                NameXeroby,
                SizedBox(height: 15.0),
                DescriptionXeroby,
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 35.0,
                ),
                loginButon,
                SizedBox(
                  height: 15.0,
                ),
                createButon,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
