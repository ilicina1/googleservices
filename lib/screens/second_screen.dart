import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:googleservices/size_config.dart';

class SecondScreen extends StatefulWidget {
  String naslov;
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
              child: Image.asset('assets/' + widget.imgUrl),
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
                  onPressed: () => _audioCache.play(widget.audioUrl),
                  child: Icon(
                    Icons.play_circle_filled_outlined,
                    size: SizeConfig.screenWidth * 0.17,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(55, 50, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Neki tekst',
                  style: TextStyle(color: Colors.grey[400]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
