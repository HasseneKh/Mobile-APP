import 'package:flutter/material.dart';

import '../../const.dart';

class AddRemoveSongButtons extends StatelessWidget {
  const AddRemoveSongButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: pageManager.addSong,
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: pageManager.removeSong,
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
