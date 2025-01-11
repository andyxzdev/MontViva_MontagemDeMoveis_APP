import 'package:flutter/material.dart';

class CustomAppBarClipper extends CustomClipper<Path> {
  //permite que você desenhe formas personalizadas (clipping paths) para recortar widgets no Flutter. O <Path> indica que você está criando um caminho 2D.
  @override
  Path getClip(Size size) {
    //Sobrescreve o método getClip, que define o formato de recorte que será aplicado ao widget filho.
    //O Size size Representa o tamanho do widget onde o clipe será aplicado (largura e altura disponíveis).
    Path path = Path(); //Cria uma nova instância da classe Path.
    path.lineTo(
        0,
        size.height -
            50); //Desenha uma linha reta desde o ponto inicial (0, 0) até (0, size.height - 50).

    path.quadraticBezierTo(
      //Desenha uma curva suave de Bézier entre dois pontos:
      size.width / 2, //Este ponto define o "pico" da curva no centro.
      size.height, //Está no meio da largura e na parte inferior do widget.
      size.width,
      size.height -
          50, //Este é o final da curva, à direita, alinhado com a altura inicial.
    ); //Este trecho cria a curva arredondada no topo do widget

    path.lineTo(size.width,
        0); //Desenha uma linha reta do final da curva (direita) até o canto superior direito do widget.
    path.close(); //Fecha o caminho, conectando automaticamente o ponto atual com o ponto inicial (0, 0).
    // Garante que a forma seja preenchida corretamente (por exemplo, com uma cor ou textura).
    return path; //Retorna o objeto Path contendo todas as instruções de desenho.
    //O ClipPath usa este caminho para recortar o widget filho.
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
  //Define se o clipe deve ser recalculado quando o estado muda
  //Retorna false, indicando que o recorte não precisa ser redesenhado
  //é importante porque otimiza o desempenho ao evitar cálculos desnecessários.
}

//Quando este CustomClipper é usado em um ClipPath, ele recorta widgets (como um Container) para exibir apenas a área definida pelo caminho. Por exemplo:

//O contêiner que você usou (com cor marrom) será cortado para exibir apenas a curva no topo.
//A curva é usada para criar um design personalizado, como um cabeçalho estilizado no topo da tela.
