//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dinheirando/perfil.dart';
import 'package:flutter_dinheirando/aula_modulo1.dart';
import 'package:flutter_dinheirando/aula_modulo2.dart';
import 'package:flutter_dinheirando/aula_modulo3.dart';
import 'package:flutter_dinheirando/aula_modulo4.dart';
import 'package:flutter_dinheirando/aula_modulo5.dart';
import 'package:flutter_dinheirando/aula_modulo6.dart';

void main() => runApp(AtividadeApp());

class AtividadeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividades',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: AtividadePage(),
    );
  }
}

class AtividadePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AtividadePageState();
  }
}

class _AtividadePageState extends State<AtividadePage> {
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
          centerTitle: true,
          title: Text('Atividades'),
          elevation: 0,
          backgroundColor: Color(0xFF189B17),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => PerfilApp()));
            },
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
            Image(
              image: AssetImage('assets/images/proj_tcc_08.jpg'),
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            SingleChildScrollView(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                //height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              VideoModulo1App()));
                                },
                                icon: Image.asset(
                                  'images/1.png',
                                  height: 100,
                                  width: 100,
                                ),
                                label: Text(
                                  '',
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Modulo 1',
                                style: TextStyle(
                                  color: Color(0xFF189B17),
                                  fontSize: 24,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              VideoModulo2App()));
                                },
                                icon: Image.asset(
                                  'images/2.png',
                                  height: 100,
                                  width: 100,
                                ),
                                label: Text(
                                  '',
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Modulo 2',
                                style: TextStyle(
                                  color: Color(0xFF189B17),
                                  fontSize: 24,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              VideoModulo3App()));
                                },
                                icon: Image.asset(
                                  'images/3.png',
                                  height: 100,
                                  width: 100,
                                ),
                                label: Text(
                                  '',
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Modulo 3',
                                style: TextStyle(
                                  color: Color(0xFF189B17),
                                  fontSize: 24,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              VideoModulo4App()));
                                },
                                icon: Image.asset(
                                  'images/4.png',
                                  height: 100,
                                  width: 100,
                                ),
                                label: Text(
                                  '',
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Modulo 4',
                                style: TextStyle(
                                  color: Color(0xFF189B17),
                                  fontSize: 24,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              VideoModulo5App()));
                                },
                                icon: Image.asset(
                                  'images/5.png',
                                  height: 100,
                                  width: 100,
                                ),
                                label: Text(
                                  '',
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Modulo 5',
                                style: TextStyle(
                                  color: Color(0xFF189B17),
                                  fontSize: 24,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              VideoModulo6App()));
                                },
                                icon: Image.asset(
                                  'images/6.png',
                                  height: 100,
                                  width: 100,
                                ),
                                label: Text(
                                  '',
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  onPrimary: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                'Modulo 6',
                                style: TextStyle(
                                  color: Color(0xFF189B17),
                                  fontSize: 24,
                                  //fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
