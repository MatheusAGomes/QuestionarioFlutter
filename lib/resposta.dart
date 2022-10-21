import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resposta extends StatelessWidget{
   final String resposta;
   final Function() fuction;

   Resposta(this.resposta,this.fuction);

  Widget build(BuildContext context){
    return Container(width: double.infinity,child: ElevatedButton(child:Text(resposta),onPressed: fuction));

  }
}