import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  //const TelaSecundaria({super.key});

  String valor;

  TelaSecundaria(this.valor); /// basicamente para passarmos um valor de uma tela para a outra, devemos nesse caso cirar um construtor a ela, e para isso basta definirmos a variavel que desejamos instanciar essa tela que desejamos fazer a transição e dentro dela colocar o noome da variavel que desejamos junto com o "this."
  // depois que criamos o seu construtor dentro da classe da TelaSecundaria, nos iremos aonde ela está sendo chamada e iremos definir neste caso um valor String, pois foi a varaivel que definimos dentro do construtor.. se fosse uma variavel inteira, deveriamos então apenas colocar valores inteiros na onde está tela está sendo chamada; "Arquivo TelaPrincipal; linha 31"
  @override
  State<TelaSecundaria> createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundaria"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
              Text("Estamos na tela secundaria: ${widget.valor}") //Agora aquela variavel chamada valor que criamos com o tipo String. após termos criado o seu construtor e definido ela na chamada da tela, nós podemos chamar essa varaiavel na tela secundaria. 
          ],
        ),
      ),
    );
  }
}