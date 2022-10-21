import 'package:flutter/cupertino.dart';

class Pergunta extends StatelessWidget{
  final String pergunta;

  Pergunta(this.pergunta);

@override
  Widget build(BuildContext context)
  {
    return Container(width: double.infinity,
    margin:EdgeInsets.all(10),
    child:Text(pergunta,style:TextStyle(fontSize: 20),textAlign: TextAlign.center,));
  }
}