import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scratchy_app/model/valuer.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => Valuer())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('${context.watch<Valuer>().number}',
              key: Key('plate'), style: TextStyle(fontSize: 60)),
          Padding(
            padding: EdgeInsets.all(20),
            child: ElevatedButton(
                key: const Key('btn'),
                onPressed: () {
                  context.read<Valuer>().getRandom();
                },
                child: Text('Roll')),
          )
        ]),
      ),
    );
  }
}
