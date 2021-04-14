import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:googleservices/size_config.dart';

class SecondScreen extends StatefulWidget {
  String naslov = "";
  String imgUrl = "";
  String audioUrl = "";
  SecondScreen(this.naslov) {
    imgUrl = naslov + '.png';
    audioUrl = naslov + '.mp3';
  }
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final _audioCache = AudioCache();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: SizeConfig.screenWidth * 0.1,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              // height: SizeConfig.screenHeight * 0.5,
              width: SizeConfig.screenWidth * 0.2,
              child: Image.asset('assets/images/' + widget.imgUrl),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.naslov,
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
                TextButton(
                  onPressed: () => _audioCache.play('audio/' + widget.audioUrl),
                  child: Icon(
                    Icons.play_circle_filled_outlined,
                    size: SizeConfig.screenWidth * 0.17,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Text(''),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
