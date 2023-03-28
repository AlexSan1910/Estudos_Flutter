import 'package:app_cara_ou_coroa/ScreenGame.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class ScreenHome extends StatefulWidget {
  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

void _exibirResultado(){

    var itens = ["cara", "coroa"];
    var numero = Random().nextInt( itens.length );
    var resultado = itens[numero];

  }

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 97, 189, 140),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          
          Image.asset("image/logo.png"),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: ((context) => ScreenGame())
                ));
              },  
              child: Image.asset("image/botao_jogar.png"),
            )
            
          )
        ],
      ),
    );
  }
}