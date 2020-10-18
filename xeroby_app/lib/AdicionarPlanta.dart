import 'package:flutter/material.dart';
import 'main.dart';

class AdicionarPlanta extends StatefulWidget {
  @override
  _AdicionarState createState() => _AdicionarState();
}

class _AdicionarState extends State<AdicionarPlanta> {
  @override
  Widget build(BuildContext context) {
    GridView.count(
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
          final List<String> entries = <String>['A', 'B', 'C'];
          final List<int> colorCodes = <int>[600, 500, 100];
          padding: const EdgeInsets.all(8),
          child: ListView.separated(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
            height: 50,
            color: Colors.amber[colorCodes[index]],
            child: Center(child: Text('Entry ${entries[index]}')),
            );
          },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
        );
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

