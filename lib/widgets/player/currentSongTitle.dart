import 'package:flutter/material.dart';
import '../../const.dart';

class CurrentSongTitle extends StatelessWidget {
  const CurrentSongTitle({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: pageManager.currentSongTitleNotifier,
      builder: (context, value, child) {
        return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(value,
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '${pageManager.playlistNotifier.value}',
                      //title,
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ));
      },
    );
  }
}
