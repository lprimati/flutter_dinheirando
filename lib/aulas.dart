//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(PerfilApp());

class PerfilApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aulas',
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
        appBar: AppBar(
          title: Text('Aulas          5'),
          elevation: 0,
          backgroundColor: Color(0xFF189B17),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            )
          ],
        ),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
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
                      Container(
                        width: 300,
                        height: 300,
                        child: Image.asset('images/video.png'),
                      ),
                      Text(
                        'Vídeo Introdução',
                        style: TextStyle(
                          color: Color(0xFF189B17),
                          fontSize: 24,
                          //fontWeight: FontWeight.bold
                        ),
                      ),
                      Container(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Voltar'),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF189B17),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Próximo'),
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xFF189B17),
                            ),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
