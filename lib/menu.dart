import 'package:flutter/material.dart';

class Telamenu extends StatelessWidget {
  const Telamenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10), // o padding fará com que os botões esticados não encostem no canto da tela
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch, // o stretch fará com que todos os botões fiquem esticados com uma maior largura
          children: <Widget>[


            const Icon(

                Icons.add_business_sharp,
                size: 120.0,
                color: Colors.red
            ),

            Text(
              "Aplicação Principal",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),

            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),

            ElevatedButton( // este botão será responsável por levar para a página do calculador de imc
              child: const Text('IMC'),
              onPressed: () {
                Navigator.pushNamed(context, '/imc');
              },
            ),

            ElevatedButton( // este botão será responsável por levar para a página do contador de cliques
              child: const Text('Contador'),
              onPressed: () {
                Navigator.pushNamed(context, '/contador');
              },
            ),

            ElevatedButton( // este botão será responsável por levar para a página de cadastro de usuarios
              child: const Text('Cadastro usuario'),
              onPressed: () {
                Navigator.pushNamed(context, '/caduser');
              },
            ),

            ElevatedButton( // este botão será responsável por levar para a página de cadastro de produtos

              child: const Text('Cadastro produto'),
              onPressed: () {
                Navigator.pushNamed(context, '/cadprods');
              },
            ),
          ],
        ),
      ),
    );
  }
}
