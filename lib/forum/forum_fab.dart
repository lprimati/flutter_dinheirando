import 'package:flutter/material.dart';
import 'package:flutter_dinheirando/forum/forum_list_model.dart';
import 'package:flutter_dinheirando/forum/forum_modal_add.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

FloatingActionButton getforumFab(BuildContext context,
    List<ForumListModel> listModels, Function fncRefresh) {
  return FloatingActionButton(
      child: Text(
        "+",
        style: TextStyle(fontSize: 24),
      ),
      backgroundColor: Color(0xFF189B17),
      onPressed: () {
        return showBarModalBottomSheet(
            context: context,
            builder: (context) => forumModalAdd(
                  listModels: listModels,
                  fncRefresh: fncRefresh,
                ));
      });
}
