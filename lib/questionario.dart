import 'package:flutter/cupertino.dart';
import './pergunta.dart';
import './resposta.dart';

class Questionario extends StatelessWidget{
final void Function() responder;
final List<Map<String, Object>> perguntas;
final int perguntaSelecionada;



Questionario(
  {
 required this.responder,
 required this.perguntas,
 required this.perguntaSelecionada}
);



 bool get tempergunta{
      return perguntaSelecionada < perguntas.length;
   }
    
    


@override






 Widget build(BuildContext context)
  {
 List <String> respostas = perguntas[perguntaSelecionada].cast()['respostas'];

    return  Column(
          children:[
            Pergunta(perguntas[perguntaSelecionada]['texto'].toString()),
            ...respostas.map((t) => Resposta(t,responder)),
          ],);
  }

}