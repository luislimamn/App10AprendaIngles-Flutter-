import 'package:aprenda_ingles/telas/Bichos.dart';
import 'package:aprenda_ingles/telas/Numeros.dart';
import 'package:aprenda_ingles/telas/Vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  final String _titulo = "Aprenda Inglês";
  final Color _corPrincipal = const Color(0xff795548);
  final Color _corSecundaria = const Color(0xfff5e9b9);
  final Color _corTexto = Colors.white;
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: 3,
        vsync: this,
        initialIndex: 0
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: _corPrincipal, //Cor de Fundo do Titulo
        foregroundColor: _corTexto, //Cor do Texto do Titulo
        bottom: TabBar(
          labelStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
          labelColor: _corTexto,
          unselectedLabelColor: _corSecundaria,
          indicatorColor: _corTexto,
          indicatorWeight: 4,
          controller: _tabController,
          tabs: const <Widget>[
            Tab(
              text: "Bichos",
              //icon: Icon(Icons.adb),
            ),
            Tab(
              text: "Números",
              //icon: Icon(Icons.numbers),
            ),
            Tab(
              text: "Vogais",
              //icon: Icon(Icons.text_rotation_none),
            )
          ]
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Bichos(),
          Numeros(),
          Vogais()
        ],
      ),
    );
  }
}
