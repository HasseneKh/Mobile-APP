import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/Utils/notifiers/repeat_button_notifier.dart';

import '../../const.dart';

class RepeatButton extends StatelessWidget {
  const RepeatButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<RepeatState>(
      valueListenable: pageManager.repeatButtonNotifier,
      builder: (context, value, child) {
        SvgPicture icon;
        switch (value) {
          case RepeatState.off:
            icon = SvgPicture.asset("images/ShuffleButton.svg",
                color: Colors.grey);
            break;
          case RepeatState.repeatSong:
            icon = SvgPicture.asset(
              "images/ShuffleButton.svg",
              color: Colors.white,
            );
            break;
          case RepeatState.repeatPlaylist:
            icon = SvgPicture.asset(
              "images/ShuffleButton.svg",
              color: Colors.white,
            ); //Icon(Icons.repeat);
            break;
        }
        return FloatingActionButton.small(
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(0.3),
          onPressed: pageManager.onRepeatButtonPressed,
          child: icon,
        );
      },
    );
  }
}
//return  Center(
//           child:  FloatingActionButton(
//             elevation: 0,
//             backgroundColor: Colors.white.withOpacity(0.3),
//             onPressed: (isLast) ? null : pageManager.onNextSongButtonPressed,
//             child: Icon(Icons.skip_next,size: 35,),
//         ));
