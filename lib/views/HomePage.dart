import 'package:flutter/material.dart';
import 'package:music_app/Utils/notifiers/play_button_notifier.dart';
import 'package:music_app/views/player.dart';

import '../const.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isplay;
  @override
  void initState() {
    setState(() {
      isplay = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 150,
            decoration: new BoxDecoration(
                gradient: new LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topCenter,
              colors: [
                Color(0xff000000),
                Color(0xff000000),
                Color(0xff000000),
                Color(0xff5D5FEF),
              ],
            )),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, right: 8.0, bottom: 8.0, left: 15),
                        child: Text(
                          'Recently played ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                      ),

                      Container(
                        height: 150,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemCount: 5,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1,
                                  crossAxisCount: 1,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 4.0),
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Card(
                                    elevation: 0.2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    child: InkWell(
                                      onTap: () {
                                        setState(() {
                                          isplay = Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => player()),
                                          );
                                        });
                                      },
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'data dat ada',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'data',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, right: 8.0, bottom: 8.0, left: 15),
                        child: Text(
                          'For You ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemCount: 5,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1,
                                  crossAxisCount: 1,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 4.0),
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Card(
                                    elevation: 0.2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    child: InkWell(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'data dat ada',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'data',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, right: 8.0, bottom: 8.0, left: 15),
                        child: Text(
                          'Populer playList ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 19,
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemCount: 5,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 1,
                                  crossAxisCount: 1,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 4.0),
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Card(
                                    elevation: 0.2,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0)),
                                    child: InkWell(),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'data dat ada',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        'data',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),

                      // Container(
                      //   color: Colors.yellow,
                      //   child: Center(
                      //     child: Container(
                      //       color: Colors.deepOrange,
                      //       child: MaterialButton(
                      //           onPressed: () {
                      //             setState(() {
                      //
                      //             });
                      //             print(isplay);
                      //           },
                      //           child: Icon(Icons.arrow_drop_down)),
                      //       height: 50,
                      //       width: 50,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                isplay != null
                    ? InkWell(
                        child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              color: Color(0xff5D5FEF),
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        '${pageManager.currentSongTitleNotifier.value}',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      subtitle: Text(
                                        'data',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      trailing:
                                          ValueListenableBuilder<ButtonState>(
                                        valueListenable:
                                            pageManager.playButtonNotifier,
                                        builder: (_, value, __) {
                                          switch (value) {
                                            case ButtonState.loading:
                                              return Container(
                                                margin: EdgeInsets.all(8.0),
                                                width: 32.0,
                                                height: 32.0,
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            case ButtonState.paused:
                                              return Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.2,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.2,
                                                  child: IconButton(
                                                    icon: Icon(
                                                      Icons.play_arrow,
                                                      size: 35,
                                                      color: Colors.white,
                                                    ),
                                                    onPressed: pageManager.play,

                                                    //   IconButton(
                                                    //   icon: Icon(Icons.play_arrow),
                                                    //   iconSize: 32.0,
                                                    //   onPressed: pageManager.play,
                                                  ));
                                            case ButtonState.playing:
                                              return Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.2,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.2,
                                                  child: IconButton(
                                                    icon: Icon(
                                                      Icons.pause,
                                                      size: 35,
                                                      color: Colors.white,
                                                    ),
                                                    onPressed:
                                                        pageManager.pause,
                                                  ));

                                              IconButton(
                                                icon: Icon(Icons.pause),
                                                iconSize: 32.0,
                                                onPressed: pageManager.pause,
                                              );
                                          }
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => player()),
                          );
                        },
                      )
                    : Container(
                        width: 0,
                        height: 0,
                      ),
              ],
            )));
  }
}
