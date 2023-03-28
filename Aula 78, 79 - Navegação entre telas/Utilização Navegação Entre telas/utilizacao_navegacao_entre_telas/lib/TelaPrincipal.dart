import 'package:flutter/material.dart';
import 'package:utilizacao_navegacao_entre_telas/TelaSecundaria.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) { // context está sendo definido aqui, por conta disso o proprio navigator já indentifica onde estamos por padrão por causa desse metodo context que já está sendo definido aqui.
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(15),
              child: ElevatedButton( // button que será utilizado para alterarmos a tela do aplicativo a uma outra tela que desejamos...
              child: Text("Ir para tela secundaria"),
              onPressed: (){
                Navigator.push(// Onavigator é uma classe utilizada para navegações entre telas, já o metodo pop ele fecha a tela atual e abre um nova que iremos definir, e o metodo push, ele abre por cima desta tela a tela que definirmos isso é bom porque podemos por exemplo definirmos que na proxima tela que abrirmos que está tela volte uma tela anterior e assim ele fecha atual e volta na anterior.
                  context, // O contexto é basicamente um parametro para definirmos aonde nós estamos no aplicativo para a partir dai criamos a rota.. neste caso estamos dentro da classe Tela Principal, que por sua vez está dentro do metodo build, depois  dentro do scaffold, depois dentro body que é um container e assim por diante... Porem não é necessario definirmos isso pois o context já é definido no metodo build
                  MaterialPageRoute( // existe varias formas de criarmos rotas aqui, mas iremos utilizado o metodo MaterialPageRoute
                    builder: (context) => TelaSecundaria() // primeiro iremos definir uma função anonima e como parametro precisamos tambem passar o context e após isso iremos instanciar a tela que desejamos que neste caso será a TelaSecundaria e mportar obviamente essa tela para este arquivo.
                    // é muito importante resaltar que se usarmos esse metodo push, ele de forma automatica já cria um button de retorno para a tela anterior, ja que com o metodo push, estamos criando e sobrepondo uma tela nova em cima desta tela atual e não escluindo a tela atual e definindo uma tela nova como o metodo pop.
                  ) 
                );
              }
             ),
            )
          ],
        ),
      ),
    );
  }
}