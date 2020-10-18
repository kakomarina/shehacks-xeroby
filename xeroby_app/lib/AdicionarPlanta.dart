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
          height: 50,
          child: const Text('Heed not the rabble'),
          color: Colors.teal[100],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          height: 50,
          //border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),

          color: Colors.white,
          child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: iluminacao.length,
            itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 30,
              color: Colors.green,
              child: Center(child: Text('Entry ${iluminacao[index]}', textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
              );

          },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
        ),
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Sound of screams but the'),
          color: Colors.teal[300],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Who scream'),
          color: Colors.teal[400],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution is coming...'),
          color: Colors.teal[500],
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: const Text('Revolution, they...'),
          color: Colors.teal[600],
        ),
      ],
    );
  }

}

