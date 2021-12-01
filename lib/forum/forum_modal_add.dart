import 'package:flutter/material.dart';
import 'package:flutter_dinheirando/forum/forum_list_model.dart';

class forumModalAdd extends StatefulWidget {
  final List<ForumListModel> listModels;
  final Function fncRefresh;
  forumModalAdd({this.listModels, this.fncRefresh});

  @override
  _forumModalAddState createState() => _forumModalAddState();
}

class _forumModalAddState extends State<forumModalAdd> {
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Qual sua dúvida?",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: "qual a dúvida...",
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              ElevatedButton(
                onPressed: () {
                  addInList();
                },
                child: Text("Criar"),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFF189B17),
                    onPrimary: Colors.white,
                    padding:
                        EdgeInsets.symmetric(horizontal: 50, vertical: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  addInList() {
    ForumListModel hml = ForumListModel(
      title: _nameController.text,
      assetIcon: "assets/icons/icons8-discussion-forum-50.png",
    );
    setState(() {
      widget.listModels.add(hml);
    });
    widget.fncRefresh();
    Navigator.pop(context);
  }
}
