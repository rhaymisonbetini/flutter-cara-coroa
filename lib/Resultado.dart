import 'package:flutter/material.dart';

//ignore: must_be_immutable
class Resultado extends StatefulWidget {
  int resultado;
  Resultado(this.resultado);

  @override
  _Resultado createState() => _Resultado();
}

class _Resultado extends State<Resultado> {
  void _voltar() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    print(widget.resultado);

    String caminho;

    widget.resultado == 1
        ? caminho = 'assets/moeda_cara.png'
        : caminho = 'assets/moeda_coroa.png';

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(caminho),
            GestureDetector(
              onTap: _voltar,
              child: Image.asset('assets/botao_voltar.png'),
            )
          ],
        ),
      ),
    );
  }
}
