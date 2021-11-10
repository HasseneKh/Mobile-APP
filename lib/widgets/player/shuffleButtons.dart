import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../const.dart';

class ShuffleButton extends StatelessWidget {
  const ShuffleButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: pageManager.isShuffleModeEnabledNotifier,
      builder: (context, isEnabled, child) {
        return   Center(
            child:  FloatingActionButton.small(
              elevation: 0,
              backgroundColor: Colors.white.withOpacity(0.3),
              onPressed:pageManager.onShuffleButtonPressed,
              child: (isEnabled)
                  ? SvgPicture.asset("images/Shuffle.svg",color: Colors.white,) //Icon(Icons.shuffle)
                  :SvgPicture.asset("images/Shuffle.svg",color: Colors.grey)


                // Icon(Icons.shuffle)
                //   : Icon(Icons.shuffle, color: Colors.grey),
            ));


        //
        //   IconButton(
        //   icon: (isEnabled)
        //       ? Icon(Icons.shuffle)
        //       : Icon(Icons.shuffle, color: Colors.grey),
        //   onPressed: pageManager.onShuffleButtonPressed,
        // );
      },
    );
  }
}
