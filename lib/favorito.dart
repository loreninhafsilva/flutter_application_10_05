import 'package:flutter/material.dart';

class MyFavorito extends StatefulWidget {
  List<String> lista = [];
  MyFavorito(this.lista, {super.key});

  @override
  State<MyFavorito> createState() => _MyFavoritoState();
}

class _MyFavoritoState extends State<MyFavorito> {
  String palavrasDaLista = " ";
  @override
  Widget build(BuildContext context) {
    mostrar();
    return Scaffold(
      appBar: AppBar(
        title: Text("Favoritos"),
        backgroundColor: Colors.blue,
      ),
      body: Center(child: Column(children: [
          SizedBox(height: 5,),
          Text(palavrasDaLista),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("Voltar")),
          SizedBox(width: 5,),
        ],)
        ],)
      ),
    );
  }

  void mostrar(){
    for(int i=0; i<widget.lista.length; i ++){
      palavrasDaLista = palavrasDaLista+ " "+ widget.lista[i];
    }
  }

}