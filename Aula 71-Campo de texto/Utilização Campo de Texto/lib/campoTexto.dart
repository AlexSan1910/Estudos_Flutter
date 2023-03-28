import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Entrada de Dados"),
      ),
      body: Column(
        children: <Widget>[
          
          
        ],
      ),
    );
  }
}