import 'package:flutter/material.dart';
import 'main.dart';

class AdicionarPlanta extends StatefulWidget {
  @override
  _AdicionarState createState() => _AdicionarState();
}

class _AdicionarState extends State<AdicionarPlanta> {
  final List<String> embientes = <String>['Sala', 'Cozinha', 'Quarto', 'Jardim Externo'];
  final List<String> iluminacao = <String>['Sol da manhã', 'Sol da tarde', 'Sol no verão', 'Sol no Inverno', 'Sem iluminação natural'];
  final List<String> companhias = <String>['Cachorro', 'Gato', 'Bebês', 'Crianças pequenas', 'Moro sozinhe'];
  final List<String> rotina = <String>['Viajo constantemente', 'Fora de casa o dia todo', 'Passo bastante tempo em casa'];
  final List<String> experiencia = <String>['Sou mãe de panta', 'Nunca tive uma planta', 'Às vezes esqueço de regar', 'Não sei adubar e podar'];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      padding: const EdgeInsets.all(20),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(8),
          child: Center(

              child: Text('Girassol',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0,color: Colors.white),)
          ),
          decoration: BoxDecoration(
            color: Color(0xffb714365),
            image: DecorationImage(
              image: AssetImage('Images/girassol1.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Center(

              child: Text('Lírio',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0,color: Colors.white),)
          ),
          decoration: BoxDecoration(
            color: Color(0xffb714365),
            image: DecorationImage(
              image: AssetImage('Images/lirio.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
            child: Center(

            child: Text('Suculentas',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20.0,color: Colors.white),)
            ),
          decoration: BoxDecoration(
          color: Color(0xffb714365),
          image: DecorationImage(
          image: AssetImage('Images/suculentas.jpeg'),
          fit: BoxFit.cover,
          ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Center(

              child: Text('Bonsai',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0,color: Colors.white),)
          ),
          decoration: BoxDecoration(
            color: Color(0xffb714365),
            image: DecorationImage(
              image: AssetImage('Images/bonsai.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Center(

              child: Text('Hibiscus',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0,color: Colors.white),)
          ),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Color(0xffb714365),
            border: Border.all(
              color: Color(0xffb714365),
              width: 0.12,
            ),
            image: DecorationImage(
              image: AssetImage('Images/hibicius.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Center(

              child: Text('Hortela',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0,color: Colors.white),)
          ),
          decoration: BoxDecoration(
            color: Color(0xffb714365),
            image: DecorationImage(
              image: AssetImage('Images/hortela.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

}

