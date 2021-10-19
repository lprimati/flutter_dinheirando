//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  //159B06
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              //decoration: BoxDecoration(
              //gradient: LinearGradient(
              //begin: Alignment.topCenter,
              //end: Alignment.bottomCenter,
              //colors: [Color(0xFF60F64F), Color(0xFF189B17)],
              //),
              //borderRadius:
              //BorderRadius.only(bottomLeft: Radius.circular(100))
              //),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //Spacer(),
                  Container(
                    width: 220,
                    height: 220,
                    alignment: Alignment.center,
                    child: Image.asset('images/Moeda.png'),
                  ),
                  Spacer(),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 32, right: 32),
                        child: Text(
                          'Login',
                          style:
                              TextStyle(color: Color(0xFF189B17), fontSize: 18),
                        ),
                      )),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.width / 1.5,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 62),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 45,
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 5)
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.email,
                          color: Colors.grey,
                        ),
                        hintText: 'Email',
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 45,
                    margin: EdgeInsets.only(top: 32),
                    padding:
                        EdgeInsets.only(top: 4, left: 16, right: 16, bottom: 4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.black12, blurRadius: 5)
                        ]),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.vpn_key,
                          color: Colors.grey,
                        ),
                        hintText: 'Senha',
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, right: 32),
                      child: Text(
                        'Esqueceu Sua Senha?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        height: 45,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('LOGIN'),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFF159B06),
                        ),
                      )
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
