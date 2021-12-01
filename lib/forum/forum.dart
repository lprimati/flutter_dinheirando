//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dinheirando/forum/forum_appbar.dart';
import 'package:flutter_dinheirando/forum/forum_content.dart';
import 'package:flutter_dinheirando/forum/forum_fab.dart';
import 'package:flutter_dinheirando/forum/forum_list_model.dart';
import 'package:flutter_dinheirando/perfil.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void main() => runApp(ForumApp());

class ForumApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fórum',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: ForumPage(),
    );
  }
}

class ForumPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ForumPageState();
  }
}

class _ForumPageState extends State<ForumPage> {
  List<ForumListModel> listModels = [
    ForumListModel(
        title: "Dúvidas do forum",
        assetIcon: "assets/icons/icons8-discussion-forum-50.png"),
    ForumListModel(
        title: "Dúvidas do forum",
        assetIcon: "assets/icons/icons8-discussion-forum-50.png"),
    ForumListModel(
        title: "Dúvidas do forum",
        assetIcon: "assets/icons/icons8-discussion-forum-50.png"),
  ];
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
      appBar: getforumAppBar(),
      floatingActionButton: getforumFab(context, listModels, refreshPage),
      body: forumPageContent(
        listModels: listModels,
      ),
    );
  }

  refreshPage() {
    setState(() {});
  }
}
