import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/models/contador.dart';
import 'routes.dart';

void main() => runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Contador())],
      child: const MyApp(),
    ));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Routes();
  }
}
