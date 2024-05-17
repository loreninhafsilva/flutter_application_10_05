import 'package:flutter/material.dart';
import 'package:flutter_application_10_05/favorito.dart';
import 'package:flutter_application_10_05/home.dart';
import 'package:flutter_application_10_05/pessoa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: MyHome(),
      routes: {
        '/': (context) => MyHome(),
        '/pessoa': (context)=> MyPessoa('hghyhgygyg'),
        '/favorito': (context)=> MyFavorito([]),
      },
    );
  }
}
