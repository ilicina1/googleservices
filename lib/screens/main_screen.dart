import 'package:flutter/material.dart';
import 'package:googleservices/services/size_config.dart';
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
      'googledrive',
      'googlemaps',
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/images/google_text.png',
                width: SizeConfig.blockSizeHorizontal * 70,
                height: SizeConfig.blockSizeVertical * 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: DropdownButton(
                  hint: Text("Language"),
                  icon: Icon(Icons.language),
                  items: ["English", "Bosanski"].map(
                    (String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text('$value'),
                      );
                    },
                  ).toList(),
                  onChanged: (value) {},
                ),
              )
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
                  return new KarticaWidget(
                      nazivAplikacije[index], slike[index]);
                },
                staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(1, index.isEven ? 1 : 1)),
          ),
        ],
      ),
    ));
  }
}
