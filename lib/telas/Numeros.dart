import 'package:flutter/material.dart';

class Numeros extends StatefulWidget {
  const Numeros({super.key});

  @override
  State<Numeros> createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //primary: false,
      //padding: const EdgeInsets.all(20),
      //crossAxisSpacing: 10,
      //mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        GestureDetector(
          onTap: (){

          },
          child: Image.asset("assets/imagens/1.png"),
        ),
        GestureDetector(
          onTap: (){

          },
          child: Image.asset("assets/imagens/2.png"),
        ),
        GestureDetector(
          onTap: (){

          },
          child: Image.asset("assets/imagens/3.png"),
        ),
        GestureDetector(
          onTap: (){

          },
          child: Image.asset("assets/imagens/4.png"),
        ),
        GestureDetector(
          onTap: (){

          },
          child: Image.asset("assets/imagens/5.png"),
        ),
        GestureDetector(
          onTap: (){

          },
          child: Image.asset("assets/imagens/6.png"),
        ),
      ],
    );
  }
}
