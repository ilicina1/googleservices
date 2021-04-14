import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class SecondScreen extends StatefulWidget {
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
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_back,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              // height: SizeConfig.screenHeight * 0.5,
              width: 80,
              child: Image.asset('assets/google.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Naslov',
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
                TextButton(
                  onPressed: () => _audioCache.play('google.mp3'),
                  child: Icon(
                    Icons.play_circle_filled_outlined,
                    size: 50,
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
