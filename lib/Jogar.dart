import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_cara_coroa/Resultado.dart';

class Jogar extends StatefulWidget {
  @override
  _Jogar createState() => _Jogar();
}

class _Jogar extends State<Jogar> {
  void _exibirResultado() {
    int resultado;
    resultado = Random().nextInt(2);

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultado(resultado)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/logo.png'),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset('assets/botao_jogar.png'),
            )
          ],
        ),
      ),
    );
  }
}
