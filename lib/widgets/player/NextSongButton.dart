import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const.dart';

class NextSongButton extends StatelessWidget {
  const NextSongButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: pageManager.isLastSongNotifier,
      builder: (_, isLast, __) {
        return  Center(
          child:  FloatingActionButton(
            elevation: 0,
            backgroundColor: Colors.white.withOpacity(0.3),
            onPressed: (isLast) ? null : pageManager.onNextSongButtonPressed,
            child: SvgPicture.asset("images/nextmusic.svg",color: Colors.white,)//Icon(Icons.skip_next,size: 35,),
        ));
          // IconButton(
          // splashRadius: 50,
          // splashColor: Colors.yellowAccent,
          // highlightColor: Colors.yellow,
          // color: Colors.white,
          // hoverColor: Colors.deepOrange,
          // icon: Icon(Icons.skip_next,size: 35,),
          //

      },
    );
  }
}
