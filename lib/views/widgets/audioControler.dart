import 'package:flutter/material.dart';
import 'package:music_app/views/widgets/NextSongButton.dart';
import 'package:music_app/views/widgets/playButons.dart';
import 'package:music_app/views/widgets/preButtons.dart';
import 'package:music_app/views/widgets/repeat.dart';
import 'package:music_app/views/widgets/shuffleButtons.dart';

class AudioControlButtons extends StatelessWidget {
  const AudioControlButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RepeatButton(),
          PreviousSongButton(),
          PlayButton(),
          NextSongButton(),
          ShuffleButton(),
        ],
      ),
    );
  }
}
