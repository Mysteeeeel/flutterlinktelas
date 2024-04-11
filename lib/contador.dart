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
      title: 'Aperta botão',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const Telacontador(title: 'Aperta botão'),
    );
  }
}

class Telacontador extends StatefulWidget {
  const Telacontador({super.key, required this.title});

  final String title;

  @override
  State<Telacontador> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Telacontador> {
  int _counter = 0;

  void _incrementCounter() { // aqui é determinado a função que que irá mudar o estado atual e adicionar mais um valor para a contagem dos cliques
    setState(() {

      _counter++;
    });
  }

  void _removeCounter() { // aqui é determinado a função que que irá mudar o estado atual e removel um valor da contagem de cliques
    setState(() {

      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text("Contador de cliques"), // título da página
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'quantas vezes voccê apertou o seu botão:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton( // botão que ao pressionado ira aumentar o valor da contagem por um a mais
                    onPressed: _incrementCounter,
                    child: const Icon(Icons.add)
                ),

                ElevatedButton( // botão que ao pressionado ira diminuir o valor da contagem por um a menos
                    onPressed: _removeCounter,
                    child: const Icon(Icons.remove)
                )
              ],
            )
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),*/
    );
  }
}
