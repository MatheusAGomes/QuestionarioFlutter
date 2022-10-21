import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget{
  final String resultado;
  final void Function() reiniciarFormulario;

  Resultado(this.resultado,this.reiniciarFormulario);

@override
  Widget build(BuildContext context)
  {
    return Column(
      children: [
        Center(
              child: Text(resultado,style:TextStyle(fontSize:17))
            ),
        TextButton(onPressed: reiniciarFormulario, child: Text('Reiniciar ?'))
      ],
    );
  }
}