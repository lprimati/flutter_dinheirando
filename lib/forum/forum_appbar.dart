import 'package:flutter/material.dart';
import 'package:flutter_dinheirando/perfil.dart';

AppBar getforumAppBar() {
  return AppBar(
    title: Text("Fórum do aluno"),
    centerTitle: true,
    backgroundColor: Color(0xFF189B17),
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {
        BuildContext context;
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => PerfilApp()));
      },
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.more_vert_rounded,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ],
  );
}
