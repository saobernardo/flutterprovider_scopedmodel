import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './models/contador.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Título de Help'),
      ),
      body: Center(
          child: Consumer<Contador>(
              builder: (context, contador, child) =>
                  Text('Contagem: ${contador.valor}'))),
    );
  }
}
