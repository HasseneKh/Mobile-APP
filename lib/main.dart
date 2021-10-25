import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:music_app/const.dart';
import 'package:music_app/views/views/playerPage.dart';
import 'package:music_app/views/widgets/NextSongButton.dart';
import 'package:music_app/views/widgets/buttons.dart';
import 'package:music_app/views/widgets/currentSongTitle.dart';
import 'package:music_app/views/widgets/playButons.dart';
import 'package:music_app/views/widgets/playList.dart';
import 'package:music_app/views/widgets/preButtons.dart';
import 'package:music_app/views/widgets/AudioProgressBar.dart';
import 'package:music_app/views/widgets/repeat.dart';
import 'package:music_app/views/widgets/shuffleButtons.dart';
import 'notifiers/play_button_notifier.dart';
import 'notifiers/progress_notifier.dart';
import 'notifiers/repeat_button_notifier.dart';
import 'views/Utils/page_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    pageManager = PageManager();
  }

  @override
  void dispose() {
    pageManager.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PlayerPage();
  }
}
