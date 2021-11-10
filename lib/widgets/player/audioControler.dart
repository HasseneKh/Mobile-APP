import 'package:flutter/material.dart';
import 'package:music_app/widgets/player/playButons.dart';
import 'package:music_app/widgets/player/preButtons.dart';
import 'package:music_app/widgets/player/repeat.dart';
import 'package:music_app/widgets/player/shuffleButtons.dart';

import 'NextSongButton.dart';

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
