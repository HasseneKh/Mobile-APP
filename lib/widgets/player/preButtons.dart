import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../const.dart';

class PreviousSongButton extends StatelessWidget {
  const PreviousSongButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: pageManager.isFirstSongNotifier,
      builder: (_, isFirst, __) {
        return FloatingActionButton(
          child: SvgPicture.asset("images/SkipBack.svg",color: Colors.white,),
            elevation: 0,
            backgroundColor: Colors.white.withOpacity(0.3),
          onPressed:(isFirst) ? null : pageManager.onPreviousSongButtonPressed,


        //   IconButton(
        //   icon: Icon(Icons.skip_previous),
        //   onPressed: (isFirst) ? null : pageManager.onPreviousSongButtonPressed,
        );
      },
    );
  }
}
