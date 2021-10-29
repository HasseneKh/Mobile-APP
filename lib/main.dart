import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:music_app/const.dart';
import 'package:music_app/views/ProfilePages/ProfileMain.dart';
import 'package:music_app/views/Search.dart';
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
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(MyApp.title),
        ),
        bottomNavigationBar: Container(
          color: Colors.black,
          height: 70,
          //width: MediaQuery.of(context).size.width - 100,
          child: Card(
            color: Colors.black,
            elevation: 3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// Home
                  bnt('Home', 0, 'assets/icons/home.svg'),

                  /// Search
                  bnt('Search', 1, 'assets/icons/search.svg'),

                  /// Profile
                  bnt('Profile', 2, 'assets/icons/profile.svg')
                ]),
          ),
        ),
        body: [PlayerPage(), Search(), ProfileMain()][_currentIndex],
      ),
    );
  }

  Widget bnt(String text, int num, String path) {
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
              SvgPicture.asset(
                path,
                color: _currentIndex != num ? Colors.white : yello,
                width: 40,
                height: 40,
              ),
              Text(
                text,
                style: TextStyle(
                  color: _currentIndex != num ? Colors.white : yello,
                ),
              ),
            ]),
      ),
    );
  }
}
