//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(PerfilApp());

class PerfilApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loja',
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
          title: Text('Loja'),
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
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      //Text(
                      //'MOEDAS',
                      //textDirection: TextDirection.ltr,
                      //style: TextStyle(
                      //fontSize: 32,
                      //color: Colors.white,
                      //backgroundColor: Color(0xFF189B17),
                      //),

                      //),
                      const SizedBox(
                        height: 180,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Image.asset(
                          'images/Moeda.png',
                          height: 100,
                          width: 100,
                        ),
                        label: Text(
                          '1000                    10,00 Reais',
                          style: TextStyle(fontSize: 28),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Image.asset(
                          'images/Moeda.png',
                          height: 100,
                          width: 100,
                        ),
                        label: Text(
                          '2500                    20,00 Reais',
                          style: TextStyle(fontSize: 28),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: Image.asset(
                          'images/Moeda.png',
                          height: 100,
                          width: 100,
                        ),
                        label: Text(
                          '6000                    30,00 Reais',
                          style: TextStyle(fontSize: 28),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
