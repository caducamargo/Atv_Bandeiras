import 'package:flutter/material.dart';
import 'pais.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('BANDEIRAS'),
          backgroundColor: Colors.orange,
        ),
        body: Home(),
      ),
    ),
  );
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Pais pais = Pais("", "");
  Paises paises = Paises();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  pais = paises.getPaisRandom();
                });
              },
              child: Image.asset(pais.getPath()),
            ),
          ),
          Text(pais.name,
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.deepOrangeAccent,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }

  _HomeState() {
    pais = paises.getPaisRandom();
  }
}
