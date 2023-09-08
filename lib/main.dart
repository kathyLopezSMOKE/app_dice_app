import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dadoIz=1;

  int dadoDer=6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          title: const Text('Dice app'),
          backgroundColor: Colors.purple,
          centerTitle: true,
          elevation: 10.0,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    print("Dado izquierdo");
                    dadoIz=4;
                    print(dadoIz);
                  },
                  child: Image.asset("assets/images/dice$dadoIz.png")
                ),
              ),
              Expanded(
                flex: 1,
                child: TextButton(
                  onPressed: () {
                    print("Dado derecho");
                  },
                  child: Image.asset("assets/images/dice$dadoDer.png")
                ),
              ),
            ],
          ),
        ),
      );
  }
}