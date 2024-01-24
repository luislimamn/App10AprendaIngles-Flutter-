import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Bichos extends StatefulWidget {
  const Bichos({super.key});

  @override
  State<Bichos> createState() => _BichosState();
}

class _BichosState extends State<Bichos> {

  final AudioPlayer _audioPlayer = AudioPlayer();
  //double largura = MediaQuery.of(context).size.width;
  //double altura = MediaQuery.of(context).size.height;

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
            _executarAudio("cao");
          },
          child: Image.asset("assets/imagens/cao.png"),
        ),
        GestureDetector(
          onTap: (){
            _executarAudio("gato");
          },
          child: Image.asset("assets/imagens/gato.png"),
        ),
        GestureDetector(
          onTap: (){
            _executarAudio("leao");
          },
          child: Image.asset("assets/imagens/leao.png"),
        ),
        GestureDetector(
          onTap: (){_executarAudio("macaco");
          },
          child: Image.asset("assets/imagens/macaco.png"),
        ),
        GestureDetector(
          onTap: (){
            _executarAudio("ovelha");
          },
          child: Image.asset("assets/imagens/ovelha.png"),
        ),
        GestureDetector(
          onTap: (){
            _executarAudio("vaca");
          },
          child: Image.asset("assets/imagens/vaca.png"),
        ),
      ],
    );
  }
}
