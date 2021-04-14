import 'package:flutter/material.dart';
import 'package:googleservices/size_config.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:googleservices/widgets/kartica.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    List<String> nazivAplikacije = [
      'flutter',
      'gmail',
      'firebase',
      'Google drive',
      'Googl maps',
      'youtube',
      'kotlin',
      'google'
    ];
    List<String> slike = [
      'flutter.png',
      'gmail.png',
      'firebase.png',
      'googledrive.png',
      'googlemaps.png',
      'youtube.png',
      'kotlin.png',
      'google.png'
    ];
    SizeConfig().init(context);
    return Scaffold(
        body: Container(
      height: SizeConfig.blockSizeVertical * 100,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/google_text.png',
                width: SizeConfig.blockSizeHorizontal * 70,
                height: SizeConfig.blockSizeVertical * 20,
              ),
            ],
          ),
          Container(
            height: SizeConfig.screenHeight * 0.8,
            width: SizeConfig.screenWidth,
            child: StaggeredGridView.countBuilder(
                itemCount: nazivAplikacije.length,
                shrinkWrap: false,
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                itemBuilder: (BuildContext context, int index) {
                  return new KarticaWidget('Google Services',
                      '${nazivAplikacije[index]}', slike[index]);
                },
                staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(1, index.isEven ? 1 : 1)),
          ),
        ],
      ),
    ));
  }
}
