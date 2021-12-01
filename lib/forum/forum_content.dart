import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dinheirando/forum/forum_list_item.dart';
import 'package:flutter_dinheirando/forum/forum_list_model.dart';

class forumPageContent extends StatefulWidget {
  final List<ForumListModel> listModels;
  forumPageContent({this.listModels});

  @override
  _forumPageContentState createState() => _forumPageContentState();
}

class _forumPageContentState extends State<forumPageContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF189B17), Colors.white],
          ),
        ),
        padding: EdgeInsets.symmetric(
          vertical: 40,
          horizontal: 20,
        ),
        child: ListView.builder(
          itemCount: widget.listModels.length,
          itemBuilder: (contex, index) {
            return forumListItem(
              forumListModel: widget.listModels[index],
            );
          },
        ));
  }
}
