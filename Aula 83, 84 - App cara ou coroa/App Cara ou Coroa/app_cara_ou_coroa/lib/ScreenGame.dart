import 'package:app_cara_ou_coroa/ScreenHome.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ScreenGame extends StatefulWidget {
  const ScreenGame({super.key});

  @override
  State<ScreenGame> createState() => _ScreenGameState();
}

class _ScreenGameState extends State<ScreenGame> {
  var _selectedImage = "image/moeda_cara.png";


void _exibirResultado(String _selectedImage){

    var _selectedImage = AssetImage("image/moeda_cara.png");


    var itens = ["cara","coroa"];
    var numero = Random().nextInt(itens.length); // estou fazendo uma geração de um numero aleatório de acordo com a quantidade de numeros que existe na lista que criamos.
    var resultado = itens[numero];

    if(resultado == "cara"){
      setState(() {
        _selectedImage = AssetImage("image/moeda_cara.png");
      });

    }else(){
      setState(() {
        _selectedImage = AssetImage("image/moeda_coroa.png");
      });
    };
}
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 97, 189, 140),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(_selectedImage),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);// o Navigator.pop ele fecha a tela atual, e retorna para a tela anterior.
            },
            child: Image.asset("image/botao_voltar.png"),
          ),
          GestureDetector(
            onTap: _exibirResultado.,
            child: Image.asset("image/botao_jogar.png"),
          ),
        ],
      ),
    );
  }
}