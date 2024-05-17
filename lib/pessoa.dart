import 'package:flutter/material.dart';

class MyPessoa extends StatefulWidget {
  String frase = "";
  MyPessoa(this.frase, {super.key});

  @override
  State<MyPessoa> createState() => _MyPessoaState();
}

class _MyPessoaState extends State<MyPessoa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pessoa"),
        backgroundColor: Colors.red,
      ),
      body: Text(widget.frase),
    );
  }
}