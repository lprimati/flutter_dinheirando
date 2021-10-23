//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dinheirando/atividades.dart';
import 'package:flutter_dinheirando/aula_modulo1.dart';

void main() => runApp(Questionario1Modulo4App());

class Questionario1Modulo4App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'questionario',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Questionario1Modulo4Page(),
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

class Questionario1Modulo4Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Questionario1Modulo4PageState();
  }
}

class _Questionario1Modulo4PageState extends State<Questionario1Modulo4Page> {
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
          title: Text('Modulo 4'),
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
                        'A melhor conduta com o seu dinheiro no mês, de acordo com a aula, seria:',
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
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                                ' Realizar seus gastos normalmente ao longo do mês, e ao final poupar o restante'),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF189B17),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 84, vertical: 15)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                                'Separar o valor que vai poupar durante o mês, depois de alguns gastos necessários'),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF189B17),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 80, vertical: 15)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Entreterimento'),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF189B17),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 80, vertical: 15)),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Doa'),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xFF189B17),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 90, vertical: 15)),
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
                                          AtividadeApp()));
                            },
                            child: Text('Avançar'),
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
