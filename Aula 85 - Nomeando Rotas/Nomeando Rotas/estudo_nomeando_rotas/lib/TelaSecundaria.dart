import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundaria"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Text("Segunda tela!!!!"),
             ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(
                  context, 
                  "/" // agora estamos chamando o nome da primeira tela que foi definido por nós, como "/" e sendo assim o app voltaraá a primeira tela que foi chamada com o "/" 
                );
              }, 
              child: Text("Ir para a primeira tela de volta"),
            )
          ],
        ),
      ),
    );
  }
}
