//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_dinheirando/modulo1/aula_modulo1.dart';
import 'package:flutter_dinheirando/modulo3/questionario2_modulo3.dart';
import 'package:flutter_dinheirando/modulo3/questionario4_modulo3.dart';

void main() => runApp(Questionario3Modulo3App());

class Questionario3Modulo3App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'questionario',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Questionario3Modulo3Page(),
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

class Questionario3Modulo3Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Questionario3Modulo3PageState();
  }
}

class _Questionario3Modulo3PageState extends State<Questionario3Modulo3Page> {
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
          title: Text('Modulo 3'),
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
                        'O uso inadequado do crédito pode levar ao endividamento excessivo e comprometer toda a sua vida financeira, acarretando descontrole emocional, problemas de saúde e, até mesmo, desestruturação familiar. Todas as alternativas estão corretas, EXCETO:',
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
                                  'É importante refletir antes de tomar crédito e não o utilizar de forma indiscriminada.'),
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
                                  'O cartão de crédito pode ser uma alternativa para realizar compras, desde que usado com muito critério.'),
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
                                  'Devemos estar conscientes de que, ao tomar crédito, podemos limitar o consumo futuro.'),
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
                                            Questionario4Modulo3App()));
                              },
                              child: Text(
                                  'Devo adquirir um produto ou serviço sempre que a prestação mensal couber no bolso ou seja, sempre que eu achar que consigo pagar.'),
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
                                          Questionario2Modulo3App()));
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
