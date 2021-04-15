import 'package:flutter/material.dart';
import 'package:googleservices/utils/shared/size_config.dart';
import 'package:googleservices/view/SecondScreenView/widgets/getBodySecond.dart';
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
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBodySecond(context),
    );
  }
}
