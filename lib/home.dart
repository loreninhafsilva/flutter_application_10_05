import 'package:flutter/material.dart';
import 'package:flutter_application_10_05/favorito.dart';
import 'package:flutter_application_10_05/pessoa.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  List<String> frasesMotivacionais = ["ddjdjdjdj", "jfjfjfjfj", "aoaoaoaoa"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo navegação"),
        backgroundColor: Colors.amber,
        actions: [IconButton
        (onPressed:(){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => MyPessoa('')));
        },
        icon: Icon(Icons.person, color: Colors.red,)),
        IconButton(onPressed: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => MyFavorito(frasesMotivacionais)));
        }, icon: Icon(Icons.favorite, color: Colors.blue,))
        ],),
        body: Center(child: Column(children: [
          SizedBox(height: 5,),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/pessoa');
          }, child: Text("Pessoa")),
          SizedBox(width: 5,),
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, '/favorito');
        }, child: Text("Favorito"))],)
        ],)
      ),
    );
  }
}