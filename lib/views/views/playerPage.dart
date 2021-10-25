import 'package:flutter/material.dart';
import 'package:music_app/views/widgets/AudioProgressBar.dart';
import 'package:music_app/views/widgets/CurrentSongTitle.dart';
import 'package:music_app/views/widgets/audioControler.dart';
import 'package:music_app/views/widgets/buttons.dart';
import 'package:music_app/views/widgets/playList.dart';

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
