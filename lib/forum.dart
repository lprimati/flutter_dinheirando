//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(PerfilApp());

class PerfilApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fórum',
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
          title: Text('Fórum do aluno'),
          elevation: 0,
          backgroundColor: Color(0xFF189B17),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            //height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
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
                            onPrimary: Color(0xFF189B17),
                            primary: Colors.white),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Avançar'),
                        style: ElevatedButton.styleFrom(
                            onPrimary: Color(0xFF189B17),
                            primary: Colors.white),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.feedback_outlined),
                        label: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing.'),
                        //style: ElevatedButton.styleFrom(
                        //onPrimary: Color(0xFF189B17),
                        //primary: Colors.white),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 70, vertical: 15)),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.feedback_outlined),
                        label: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing.'),
                        //style: ElevatedButton.styleFrom(
                        //onPrimary: Color(0xFF189B17),
                        //primary: Colors.white),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF189B17),
                            onPrimary: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 70, vertical: 15)),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.feedback_outlined),
                        label: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing.'),
                        //style: ElevatedButton.styleFrom(
                        //onPrimary: Color(0xFF189B17),
                        //primary: Colors.white),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 70, vertical: 15)),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.feedback_outlined),
                        label: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing.'),
                        //style: ElevatedButton.styleFrom(
                        //onPrimary: Color(0xFF189B17),
                        //primary: Colors.white),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF189B17),
                          onPrimary: Colors.black,
                          padding: EdgeInsets.symmetric(
                              horizontal: 70, vertical: 15),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.feedback_outlined),
                        label: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing.'),
                        //style: ElevatedButton.styleFrom(
                        //onPrimary: Color(0xFF189B17),
                        //primary: Colors.white),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 70, vertical: 15)),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.feedback_outlined),
                        label: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing.'),
                        //style: ElevatedButton.styleFrom(
                        //onPrimary: Color(0xFF189B17),
                        //primary: Colors.white),
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF189B17),
                            onPrimary: Colors.black,
                            padding: EdgeInsets.symmetric(
                                horizontal: 70, vertical: 15)),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ));
  }
}
