//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(PerfilApp());

class PerfilApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'bem vindo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: PerfilPage(),
    );
  }
}

class PerfilPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PerfilPageState();
  }
}

class _PerfilPageState extends State<PerfilPage> {
  get height => null;

  //159B06
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(
        //title: Text('Aulas          5'),
        //elevation: 0,
        //backgroundColor: Color(0xFF189B17),
        //leading: IconButton(
        //icon: Icon(Icons.arrow_back_ios),
        //onPressed: () {},
        //),
        //actions: <Widget>[
        //IconButton(
        //icon: Icon(Icons.favorite),
        //onPressed: () {},
        //)
        //],
        //),
        body: Stack(fit: StackFit.expand, children: <Widget>[
      Image(image: AssetImage('assets/images/proj_tcc_08.jpg')),
      SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'BEM VINDO(A) !',
                  style: TextStyle(
                    color: Color(0xFF189B17),
                    fontSize: 28,
                    //fontWeight: FontWeight.bold
                  ),
                ),
                Container(
                    // decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //   image: NetworkImage('images/proj_tcc_08.png'),
                    // )),
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 300,
                      height: 200,
                      alignment: Alignment.center,
                      child: Image.asset('images/Dinheirando.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'FAÇA SEU LOGIN',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('JÁ POSSUO CADASTRO'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF189B17),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('CADASTRE-SE'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Color(0xFF189B17),
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    ]));
  }
}
