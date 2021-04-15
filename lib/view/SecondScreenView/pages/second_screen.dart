import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:googleservices/utils/shared/size_config.dart';
import 'package:googleservices/utils/style/style.dart';
import 'package:googleservices/view/GetReqView/pages/getreq_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:googleservices/utils/textVariables/textVariable.dart';

class SecondScreen extends StatefulWidget {
  SecondScreen() {
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
                  child: Styles.buttonBack,
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.fade,
                  child: GetReq(),
                ),
              );
            },
            child: Text('GetRequest').tr(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Container(
              // height: SizeConfig.screenHeight * 0.5,
              width: SizeConfig.screenWidth * 0.2,
              child: Image.asset('assets/images/' + imgUrl),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  naslov,
                  style: Styles.naslovStyle,
                ),
                TextButton(
                  onPressed: () => _audioCache.play('audio/' + audioUrl),
                  child: Styles.buttonPlay,
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                alignment: Alignment.topCenter,
                decoration: Styles.boxDecoration,
                child: Text(
                  'Test Text: testtesttesttesttesttesttesttesttesttesttesttesttest',
                  style: Styles.bigTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
