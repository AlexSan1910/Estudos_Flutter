import 'package:app_cara_ou_coroa/ScreenHome.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'ScreenGame.dart';


class ScreenGame extends StatefulWidget {
  @override
  State<ScreenGame> createState() => _ScreenGameState();
}

  String valor;

  Resultado(this.valor);

class _ScreenGameState extends State<ScreenGame> {    
  @override
  Widget build(BuildContext context) {
    var caminhoImagem;

    if(this.valor == "cara" ){
      caminhoImagem = "imagens/moeda_cara.png";
    }else{
      caminhoImagem = "imagens/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 97, 189, 140),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(caminhoImagem),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);// o Navigator.pop ele fecha a tela atual, e retorna para a tela anterior.
            },
            child: Image.asset("image/botao_voltar.png"),
          ),
        ],
      ),
    );
  }
}