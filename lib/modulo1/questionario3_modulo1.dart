//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dinheirando/modulo1/aula_modulo1.dart';
import 'package:flutter_dinheirando/modulo1/questionario2_modulo1.dart';
import 'package:flutter_dinheirando/modulo1/questionario4_modulo1.dart';

void main() => runApp(Questionario3Modulo1App());

class Questionario3Modulo1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'questionario',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Questionario3Modulo1Page(),
    );
  }
}

createAlertDialog(BuildContext context) {
  TextEditingController customController = TextEditingController();

  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Acertou'),
          actions: <Widget>[
            MaterialButton(
              elevation: 5.0,
              child: Text('voltar'),
              onPressed: () {
                Navigator.of(context).pop(customController.text.toString());
              },
            )
          ],
        );
      });
}

createErradoDialog(BuildContext context) {
  TextEditingController customController = TextEditingController();

  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Errado'),
          actions: <Widget>[
            MaterialButton(
              elevation: 5.0,
              child: Text('voltar'),
              onPressed: () {
                Navigator.of(context).pop(customController.text.toString());
              },
            )
          ],
        );
      });
}

class Questionario3Modulo1Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Questionario3Modulo1PageState();
  }
}

class _Questionario3Modulo1PageState extends State<Questionario3Modulo1Page> {
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
          title: Text('Modulo 1'),
          elevation: 0,
          backgroundColor: Color(0xFF189B17),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => VideoModulo1App()));
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const SizedBox(
                        height: 60,
                      ),
                      Text(
                        'Sob a ??tica da gest??o financeira pessoal, assinale a alternativa falsa:',
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
                            height: 70,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {
                                createErradoDialog(context);
                              },
                              child: Text(
                                  'Necessidade ?? tudo aquilo de que precisamos, independentemente de nossos anseios. S??o coisas absolutamente indispens??veis para nossa vida.'),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF189B17),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 84, vertical: 15)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {
                                createErradoDialog(context);
                              },
                              child: Text(
                                  'As escolhas financeiras devem ser tomadas de modo equilibrado, considerando-se tanto o lado emocional quanto o lado racional.'),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF189B17),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 80, vertical: 15)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Questionario4Modulo1App()));
                              },
                              child: Text(
                                  'N??o devemos satisfazer nossos desejos, pois eles atrapalham nossa gest??o financeira.'),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF189B17),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 80, vertical: 15)),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {
                                createErradoDialog(context);
                              },
                              child: Text(
                                  'Juros pode ser entendido como o custo da realiza????o de uma troca intertemporal.'),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF189B17),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 90, vertical: 15)),
                            ),
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Questionario2Modulo1App()));
                            },
                            child: Text('Voltar'),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF189B17),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 60, vertical: 15)),
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
