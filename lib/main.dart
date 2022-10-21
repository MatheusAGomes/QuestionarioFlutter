import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

void main() => runApp(const PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
  }
  void _reiniciarFormulario() {
    setState(() {
      _perguntaSelecionada= 0;
    });
  }
  final perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro'],
      },
    ];
  bool get tempergunta{
      return _perguntaSelecionada < perguntas.length;
    }

  @override
  Widget build(BuildContext context) {
    
   

   
    

    
      List <String> respostas = tempergunta ? perguntas[_perguntaSelecionada].cast()['respostas'] : [];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body:tempergunta ? Questionario(responder: _responder, perguntas: perguntas, perguntaSelecionada: _perguntaSelecionada)
        :Resultado('Parabens',_reiniciarFormulario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
