import 'package:flutter/material.dart';

import 'forum_list_model.dart';

// ignore: must_be_immutable
// ignore: camel_case_types
class forumListItem extends StatefulWidget {
  final ForumListModel forumListModel;
  forumListItem({this.forumListModel});
  @override
  _forumListItemState createState() => _forumListItemState();
}

class _forumListItemState extends State<forumListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Container(
            height: 15,
            decoration: BoxDecoration(
              color: Color(0xFF189B17),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7), topRight: Radius.circular(7)),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(7),
                  bottomRight: Radius.circular(7)),
            ),
            child: Container(
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(widget.forumListModel.assetIcon),
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Text(
                        widget.forumListModel.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.delete,
                    color: Colors.red,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
