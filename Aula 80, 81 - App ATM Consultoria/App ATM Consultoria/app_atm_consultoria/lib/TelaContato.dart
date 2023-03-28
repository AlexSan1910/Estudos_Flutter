import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  const TelaContato({super.key});

  @override
  State<TelaContato> createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre a empresa"),
        backgroundColor: Colors.green[200],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    "image/detalhe_contato.png",
                    width: 100,
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "nossos contatos",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green[200]
                      ),
                    ),
                  )
                ],
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Consultor: Alex Gomes"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Telefone: 3272-1503"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Text("Nuemro: 17-98807-7651")
            ],
            )
            ],
          ),
        ),
      ),
    );
}
}