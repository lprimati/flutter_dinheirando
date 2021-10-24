//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_dinheirando/aula_modulo1.dart';
import 'package:flutter_dinheirando/questionario3_modulo6.dart';
import 'package:flutter_dinheirando/resultado_modulo6.dart';

void main() => runApp(Questionario4Modulo6App());

class Questionario4Modulo6App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'questionario',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Questionario4Modulo6Page(),
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

class Questionario4Modulo6Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Questionario4Modulo6PageState();
  }
}

class _Questionario4Modulo6PageState extends State<Questionario4Modulo6Page> {
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
          title: Text('Modulo 6'),
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
                        'São cuidados que devemos ter na contratação de seguros, EXCETO:',
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
                              child: Text('Ler atentamente o contrato.'),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF189B17),
                                // padding: EdgeInsets.symmetric(
                                //     horizontal: 84, vertical: 15)
                              ),
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
                                            ResultadoModulo6App()));
                              },
                              child: Text('Não fazer comparações de preço.'),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF189B17),
                                // padding: EdgeInsets.symmetric(
                                //     horizontal: 80, vertical: 15)
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {
                                createErradoDialog(context);
                              },
                              child: Text(
                                  'Atentar para as cláusulas referentes à garantia e aos riscos excluídos da cobertura do seguro.'),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF189B17),
                                // padding: EdgeInsets.symmetric(
                                //     horizontal: 80, vertical: 15)
                              ),
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
                                  'Verificar a idoneidade da empresa e do corretor de seguros.'),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF189B17),
                                // padding: EdgeInsets.symmetric(
                                //     horizontal: 90, vertical: 15)
                              ),
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
                                          Questionario3Modulo6App()));
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
