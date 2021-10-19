//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(PerfilApp());

class PerfilApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perfil',
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

  final String url =
      'https://lh5.googleusercontent.com/proxy/sOU2mLZgr2WemW1uy0aUjgMeRnEk3yBfNv_Nl40M2zwheCAGN-Mqoh8zCfqm8vRjFc3ecgSQKZy4TqlrFMzpeMKXavxt1gvPCvNOFULpYVlvfhLmnACZtlMNdCQrwedjES-hqXfn5_0nPxTF-mpWo1ePGg=s0-d';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        elevation: 0,
        backgroundColor: Color(0xFF189B17),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
            child: Column(
              children: <Widget>[
                Icon(
                  Icons.person,
                  size: 140,
                  color: Color(0xFF189B17),
                ),
                Text(
                  'Alberto Silva',
                  style: TextStyle(
                      color: Color(0xFF189B17),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 16),
                  child: Text(
                    'ID: 1234567',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 200,
            padding: EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.feedback_outlined,
                          size: 30,
                          color: Color(0xFF189B17),
                        ),
                        Text(
                          'Feed',
                          style: TextStyle(
                              color: Color(0xFF189B17),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.forum,
                          size: 30,
                          color: Color(0xFF189B17),
                        ),
                        Text(
                          'Fórum',
                          style: TextStyle(
                              color: Color(0xFF189B17),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.class_,
                          size: 30,
                          color: Color(0xFF189B17),
                        ),
                        Text(
                          'Aulas',
                          style: TextStyle(
                              color: Color(0xFF189B17),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.local_mall,
                          size: 30,
                          color: Color(0xFF189B17),
                        ),
                        Text(
                          'Loja',
                          style: TextStyle(
                              color: Color(0xFF189B17),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  'Following : 50',
                  style: TextStyle(
                    color: Color(0xFF189B17),
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 16),
                  child: Text(
                    'Follower: 10',
                    style: TextStyle(
                      color: Color(0xFF189B17),
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
