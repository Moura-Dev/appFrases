import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: MyHomePage(title: 'Frases de Harvey Specter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _numeroAleatorio = 0;
  List _frases = [
  ' Eu não tenho sonhos, eu tenho objetivos ',
  ' Vencedores não criam desculpas ',
  ' Eu não estou interessado em excelência, eu quero saber quem é o seu pai ',
  ' A única vez em que o sucesso vem antes do trabalho é no dicionário ',
  ' Já amou alguém a ponto de sentir que faria qualquer coisa por essa pessoa? Pois é, então faça esse alguém ser você – e faça qualquer coisa que você queira muito. ',
  ' Meu respeito não é demandado, é merecido ',
  ' Eu não tenho sorte, eu faço minha própria sorte ',
  ' Você nunca ganhará muito se ficar apenas se preocupando em minimizar as perdas ',
  ' Você viverá uma vida monótona e entediante se não correr riscos ',
  ' Essa é a diferença entre eu e você. Você quer perder pouco, eu quero vencer muito ',
  ];

  void _incrementCounter() {
    setState(() {

      _numeroAleatorio = new Random().nextInt(10);

    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pressione o botão para gerar uma frase:',
            ),
            Text(
              _frases[_numeroAleatorio],
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
