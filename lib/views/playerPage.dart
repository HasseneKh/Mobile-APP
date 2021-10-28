import 'package:flutter/material.dart';
import 'package:music_app/widgets/player/AudioProgressBar.dart';
import 'package:music_app/widgets/player/audioControler.dart';
import 'package:music_app/widgets/player/buttons.dart';
import 'package:music_app/widgets/player/currentSongTitle.dart';
import 'package:music_app/widgets/player/playList.dart';

class PlayerPage extends StatefulWidget {
  PlayerPage({Key? key}) : super(key: key);

  @override
  _PlayerPageState createState() => _PlayerPageState();
}

class _PlayerPageState extends State<PlayerPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              CurrentSongTitle(),
              Playlist(),
              AddRemoveSongButtons(),
              AudioProgressBar(),
              AudioControlButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
