import 'package:flutter/material.dart';
import 'package:music_app/const.dart';
import 'package:music_app/views/ProfilePages/ProfileMain.dart';
import 'package:music_app/views/playerPage.dart';

import 'Utils/page_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  static final title = 'IlloMusic';

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;
  @override
  void dispose() {
    pageManager.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    pageManager = PageManager();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyApp.title,
      theme: ThemeData(
        backgroundColor: Colors.black,
        //primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(MyApp.title),
        ),
        bottomNavigationBar: Card(
          elevation: 2,
          child: Container(
            height: 70,
            color: Colors.black,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Home
                  bnt('Home', 0, Icons.home),

                  /// Search
                  bnt('Search', 1, Icons.search),

                  /// Profile
                  bnt('Profile', 2, Icons.person)
                ]),
          ),
        ),
        body: [PlayerPage(), ProfileMain(), ProfileMain()][_currentIndex],
      ),
    );
  }

  Widget bnt(String text, int num, IconData icon) {
    return InkWell(
      onTap: () {
        setState(() {
          _currentIndex = num;
        });
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: _currentIndex != num ? Colors.white : Colors.orange,
              ),
              Text(
                text,
                style: TextStyle(
                  color: _currentIndex != num ? Colors.white : Colors.orange,
                ),
              ),
            ]),
      ),
    );
  }
}
