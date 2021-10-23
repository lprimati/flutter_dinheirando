//import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:flutter/services.dart';
import 'package:flutter_dinheirando/atividades.dart';
import 'package:flutter_dinheirando/questionario1_modulo1.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() => runApp(VideoModulo1App());

class VideoModulo1App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aulas',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: VideoModulo1Page(
        title: 'video de educaçao',
        url: 'https://www.youtube.com/watch?v=0-QQLrKvY3k',
      ),
    );
  }
}

class VideoModulo1Page extends StatefulWidget {
  VideoModulo1Page({this.title, this.url});
  final String title;
  final url;
  @override
  State<StatefulWidget> createState() {
    return _VideoModulo1PageState();
  }
}

class _VideoModulo1PageState extends State<VideoModulo1Page> {
  //get height => null;
  YoutubePlayerController _controller;
  void runYoutubePlayer() {
    _controller = YoutubePlayerController(
        initialVideoId: YoutubePlayer.convertUrlToId(widget.url),
        flags: YoutubePlayerFlags(
          enableCaption: false,
          isLive: false,
          autoPlay: true,
        ));
  }

  //159B06
  @override
  void initState() {
    super.initState();
    runYoutubePlayer();
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
                      builder: (BuildContext context) => AtividadeApp()));
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
                      YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,
                        progressIndicatorColor: Colors.blueAccent,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      // Container(
                      //   width: 300,
                      //   height: 300,
                      //   child: Image.asset('images/video.png'),
                      // ),
                      Text(
                        'Nossa Relação com o Dinheiro',
                        style: TextStyle(
                          color: Color(0xFF189B17),
                          fontSize: 24,
                          //fontWeight: FontWeight.bold
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(32),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        // const SizedBox(
                                        //   height: 50,
                                        // ),
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        AtividadeApp()));
                                          },
                                          child: Text('Voltar'),
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xFF189B17),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 50,
                                                  vertical: 15)),
                                        ),
                                      ],
                                    ),
                                    // const SizedBox(
                                    //   height: 10,
                                    // ),
                                    Column(
                                      children: <Widget>[
                                        ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        Questionario1Modulo1App()));
                                          },
                                          child: Text('Próximo'),
                                          style: ElevatedButton.styleFrom(
                                              primary: Color(0xFF189B17),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 40,
                                                  vertical: 15)),
                                        ),
                                      ],
                                    )
                                  ]),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
