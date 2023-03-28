import 'package:flutter/material.dart';
import 'TelaSecundaria.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: '/', // ao definirmos uma barra o nosso caminho da rota inicial se torna o arquivo que estamos colcoando, que neste caso seria o main.dart
    routes: {
      "/secundaria" : (context) => TelaSecundaria()// basicamente nós definimos o nome de /secundaria para a tela telaSecundaria, sendo assim não a mais a necessidade de instanciar sempre que formos chamar a telaSecundaria por exemplo, e sim simplemsente só escrevermos o nome que definimos para essa rota que nesse caso seria /secundaria
    },
    home: TelaPrincipal(),
  ));
}

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(// é importante lembrar que ao invés do pop ou do push, estamos utilziando o pushnemad que é a classe utilizada para chamar uma tela pelo seu nome definido por nós.
                  context, 
                  "/secundaria" // agora basta simplesmente colocarmos o nome que foi definido a tela e simplesmente iremos chamar essa tela que nomeamos.
                );
              }, 
              child: Text("Ir para a proxima tela"),
            )
          ],
        ),
      ),
    );
  }
}


