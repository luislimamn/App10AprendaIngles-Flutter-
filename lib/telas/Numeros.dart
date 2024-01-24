import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Numeros extends StatefulWidget {
  const Numeros({super.key});

  @override
  State<Numeros> createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {

  final AudioPlayer _audioPlayer = AudioPlayer();

  _executarAudio(String nomeAudio) async {
    _audioPlayer.setVolume(1.0);
    await _audioPlayer.setSource(AssetSource("audios/$nomeAudio.mp3"));
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //primary: false,
      //padding: const EdgeInsets.all(20),
      //crossAxisSpacing: 10,
      //mainAxisSpacing: 10,
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: <Widget>[
        GestureDetector(
          onTap: (){
            _executarAudio("1");
          },
          child: Image.asset("assets/imagens/1.png"),
        ),
        GestureDetector(
          onTap: (){
            _executarAudio("2");
          },
          child: Image.asset("assets/imagens/2.png"),
        ),
        GestureDetector(
          onTap: (){
            _executarAudio("3");
          },
          child: Image.asset("assets/imagens/3.png"),
        ),
        GestureDetector(
          onTap: (){
            _executarAudio("4");
          },
          child: Image.asset("assets/imagens/4.png"),
        ),
        GestureDetector(
          onTap: (){
            _executarAudio("5");
          },
          child: Image.asset("assets/imagens/5.png"),
        ),
        GestureDetector(
          onTap: (){
            _executarAudio("6");
          },
          child: Image.asset("assets/imagens/6.png"),
        ),
      ],
    );
  }
}
