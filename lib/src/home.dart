import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './models/contador.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          const Text('Contagem:'),
          //Para ler e exibir informação, usa-se consumer
          Consumer<Contador>(
              builder: (context, contador, child) =>
                  Text(contador.valor.toString())),
          ElevatedButton(
              onPressed: () {
                //Rodar uma função do contador vindo do provider, para alterar informação
                Provider.of<Contador>(context, listen: false).aumentar();
              },
              child: const Text('Aumentar')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/help');
              },
              child: const Text('Ir para Help')),
        ],
      )),
    );
  }
}
