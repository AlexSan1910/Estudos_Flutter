import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({super.key});

  @override
  State<TelaCliente> createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clientes"),
        backgroundColor: Colors.green[400],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset(
                    "image/detalhe_cliente.png",
                    width: 100,
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Sobre os nossos clientes",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.green[400]
                      ),
                    ),
                  )
                ],
              ),
              Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Empresa de Software"),
                ],
              ),
            ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Image.asset("image/cliente1.png"),
                    
                  ),
                ],
              ),
             Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Empresa de Engenharia"),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(                  
                  padding: EdgeInsets.only(top: 15),
                  child: Image.asset("image/cliente2.png"),
                ),
              ],
            )
            ],
          ),
        ),
      ),
    );
  }
}