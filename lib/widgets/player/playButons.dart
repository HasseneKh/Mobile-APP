import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/Utils/notifiers/play_button_notifier.dart';

import '../../const.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ButtonState>(
      valueListenable: pageManager.playButtonNotifier,
      builder: (_, value, __) {
        switch (value) {
          case ButtonState.loading:
            return Container(
              margin: EdgeInsets.all(8.0),
              width: 32.0,
              height: 32.0,
              child: CircularProgressIndicator(),
            );
          case ButtonState.paused:
            return Container(
                height: MediaQuery.of(context).size.width * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)),
                  elevation: 0,
                  minWidth: 200.0,
                  height: 95,
                  color: Colors.white.withOpacity(0.3),
                  child: Icon(
                    Icons.play_arrow,
                    size: 35,
                    color: Colors.white,
                  ),
                  onPressed: pageManager.play,
                )

                //   FloatingActionButton.extended(
                //   label: Icon(
                //     Icons.play_arrow,
                //     size: 35,
                //   ),
                //   elevation: 0,
                //   backgroundColor: Colors.white.withOpacity(0.3),
                //   onPressed: pageManager.play,
                //
                //   //   IconButton(
                //   //   icon: Icon(Icons.play_arrow),
                //   //   iconSize: 32.0,
                //   //   onPressed: pageManager.play,
                // )
                );
          case ButtonState.playing:
            return Container(
                height: MediaQuery.of(context).size.width * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0)),
                  elevation: 0,
                  minWidth: 200.0,
                  height: 95,
                  color: Colors.white.withOpacity(0.3),
                  child: SvgPicture.asset(
                    "images/Pause.svg",
                    color: Colors.white,
                  ),
                  onPressed: pageManager.pause,
                ));

          //
          //   FloatingActionButton.large(
          //   child: Icon(
          //     Icons.pause,
          //     size: 35,
          //   ),
          //   elevation: 0,
          //   backgroundColor: Colors.white.withOpacity(0.3),
          //
          // ));

          // IconButton(
          //   icon: Icon(Icons.pause),
          //   iconSize: 32.0,
          //   onPressed: pageManager.pause,
          // );
        }
      },
    );
  }
}
