import 'dart:math';
import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: const Telacadastroprodutos(),
    );
  }
}

class Telacadastroprodutos extends StatefulWidget {
  const Telacadastroprodutos({super.key});

  @override
  State<Telacadastroprodutos> createState() => _HomeState();
}

class _HomeState extends State<Telacadastroprodutos> {

  TextEditingController precoController = new TextEditingController();
  TextEditingController nomeController = new TextEditingController();
  TextEditingController descricaoController = new TextEditingController();

  String _textoInfo = "Informe os dados do produto";

  void _limpar_Tela(){ // se trata de uma função que ao ser utilizada remove os dados que estão no campo de texto
    precoController.text = "";
    nomeController.text = "";
    descricaoController.text = "";
    setState(() {

      _textoInfo = "Informe os dados do produto";

    });
  }

  void _cadastrar(){
    setState(() {

      String preco = (precoController.text);

      String nome = (nomeController.text);

      String descricao = (descricaoController.text);

      precoController.text = "";
      nomeController.text = "";
      descricaoController.text = "";

      _textoInfo = "Dados do produto cadastrados com sucesso!";

      if (preco.isEmpty){
        _textoInfo = "preencha os dados do produto corretamente!";
      }

      if (nome.isEmpty){
        _textoInfo = "preencha os dados do produto corretamente!";
      }

      if (descricao.isEmpty){
        _textoInfo = "preencha os dados do produto corretamente!";
      }

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          title: Text("Cadastro de produto"),
          centerTitle: true,
          backgroundColor: Colors.purpleAccent,

          actions: <Widget>[

            IconButton(
                onPressed: _limpar_Tela,
                icon: Icon(Icons.refresh)
            ),

          ]

      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            const Icon(
                Icons.person,
                size: 120.0,
                color: Colors.purpleAccent
            ),

            TextField(

              keyboardType: TextInputType.number,
              decoration: InputDecoration(

                labelText: "preço",
                labelStyle: TextStyle(color: Colors.black),

              ),

              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: precoController,


            ),

            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(

                labelText: "nome",
                labelStyle: TextStyle(color: Colors.black),

              ),

              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: nomeController,

            ),

            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(

                labelText: "descricao",
                labelStyle: TextStyle(color: Colors.black),

              ),

              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: descricaoController,

            ),


            Padding(padding: const EdgeInsets.only(top: 10, bottom: 10),

              child: SizedBox(

                height: 50.0,

                child: ElevatedButton(

                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.yellow)
                    ),

                    onPressed: _cadastrar,

                    child: const Text("Cadastrar")


                ),

              ),

            ),

            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 25.0
              ),
            )
          ],
        ),
      ),
    );
  }
}
