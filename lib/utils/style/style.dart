import 'package:flutter/material.dart';
import 'package:googleservices/utils/shared/size_config.dart';

class Styles {
  static final TextStyle naslovStyle = TextStyle(
    fontSize: 50,
  );

  static final TextStyle bigTextStyle = TextStyle(
    fontSize: 80,
  );

  static final Icon buttonBack = Icon(
    Icons.arrow_back,
    size: SizeConfig.screenWidth * 0.1,
  );

  static final Icon buttonPlay = Icon(
    Icons.play_circle_filled_outlined,
    size: SizeConfig.screenWidth * 0.17,
  );

  static final Icon buttonLanguage = Icon(
    Icons.language,
    color: Colors.blue,
  );

  static final BoxDecoration boxDecoration = BoxDecoration(
    border: Border.all(
      color: Colors.grey,
    ),
    borderRadius: BorderRadius.circular(10.0),
  );

  static final RoundedRectangleBorder rectangleBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  );
}
