import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:music_app/Utils/notifiers/progress_notifier.dart';

import '../../const.dart';

class AudioProgressBar extends StatelessWidget {
  const AudioProgressBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ProgressBarState>(
      valueListenable: pageManager.progressNotifier,
      builder: (_, value, __) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: ProgressBar(
            timeLabelTextStyle: TextStyle(color: Colors.white),
            progressBarColor: Color(0xffF3BF59),
            baseBarColor: Color(0xffF3BF59),
            thumbColor: Color(0xffF3BF59),
            progress: value.current,
            buffered: value.buffered,
            total: value.total,
            onSeek: pageManager.seek,
          ),
        );
      },
    );
  }
}
