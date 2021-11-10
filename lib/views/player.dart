import 'package:flutter/material.dart';
import 'package:music_app/widgets/player/AudioProgressBar.dart';
import 'package:music_app/widgets/player/audioControler.dart';
import 'package:music_app/widgets/player/currentSongTitle.dart';
import 'package:music_app/widgets/player/playList.dart';

class player extends StatefulWidget {
  @override
  _playerState createState() => _playerState();
}

class _playerState extends State<player> {
  bool isplay = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topCenter,
          colors: [
            Color(0xff000000),
            Color(0xff000000),
            Color(0xff000000),
            Color(0xff5D5FEF),
          ],
        )),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      print(isplay);
                      Navigator.pop(context, isplay);
                    },
                    child: Icon(
                      Icons.arrow_downward_sharp,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                child: Image.asset('images/music.png'),
              ),
            ),
            CurrentSongTitle(),
            SizedBox(
              height: 10,
            ),
            AudioProgressBar(),
            SizedBox(
              height: 10,
            ),
            AudioControlButtons(),
            SizedBox(
              height: 10,
            ),
            //  AddRemoveSongButtons(),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Play List Name',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),

            Playlist(),
          ],
        ),
      )),
    );
  }
}
