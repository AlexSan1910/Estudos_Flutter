import 'package:app_atm_consultoria/TelaCliente.dart';
import 'package:app_atm_consultoria/TelaContato.dart';
import 'package:app_atm_consultoria/TelaEmpresa.dart';
import 'package:app_atm_consultoria/TelaServico.dart';
import 'package:flutter/material.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("image/logo.png"),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => TelaEmpresa())
                      );
                    },
                    child: Image.asset("image/menu_empresa.png"),
                  ),
                  GestureDetector(
                    onTap: (){Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context)=> TelaServico())
                     );
                    },
                    child: Image.asset("image/menu_servico.png"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => TelaCliente())
                      );
                    },
                    child: Image.asset("image/menu_cliente.png"),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (Context) => TelaContato())
                      );
                    },
                    child: Image.asset("image/menu_contato.png"),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}