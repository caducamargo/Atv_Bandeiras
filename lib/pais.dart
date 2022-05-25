import 'dart:math';

import 'main.dart';

class Pais{
  String name = "";
  String path = "";

  Pais(this.name, this.path);
  getPath(){
    if(path.isEmpty){
      return "images/none.png";
    }else{
      return "images/${path}";
    }
  }
}

class Paises {
  Random n = Random();

  Paises(){
    this.paises = [
      Pais("Alemanha","Alemanha.png"),
      Pais("Angola","Angola.png"),
      Pais("Argentina","Argentina.png"),
      Pais("Australia","Australia.png"),
      Pais("Belgica","Belgica.png"),
      Pais("Brasil","Brasil.png"),
      Pais("Canada","Canada.png"),
      Pais("Catar","Catar.png"),
      Pais("Chile","Chile.png"),
      Pais("China","China.png"),
      Pais("Egito","Egito.png"),
      Pais("Estados Unidos","Estados_Unidos.png"),
      Pais("Finlândia","Finlandia.png"),
      Pais("França","Fraca.png"),
      Pais("Hong Kong","Hong_Kong.png"),
      Pais("India","India.png"),
      Pais("Israel","Israel.png"),
      Pais("Koreia do Norte","Koreia_do_Norte.png"),
      Pais("Koreia do Sul","Koreia_do_Sul.png"),
      Pais("Turquia","Turquia.png"),
      Pais("Uruguai","Uruguai.png"),
      Pais("Venezuela","Venezuela.png")
    ];
  }
  Pais pais = new Pais("", "");
  List<Pais> paises = [];

  getPaisRandom(){
    int index = n.nextInt(paises.length);
    return paises[index];
  }

}