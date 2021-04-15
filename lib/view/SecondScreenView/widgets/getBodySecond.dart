import 'package:flutter/material.dart';
import 'package:googleservices/view/GetReqView/pages/getReqScreen.dart';
import 'package:googleservices/utils/shared/size_config.dart';
import 'package:googleservices/utils/style/style.dart';
import 'package:googleservices/view/SecondScreenView/widgets/audioButtonWidget.dart';
import 'package:googleservices/view/SecondScreenView/widgets/expandedWidget.dart';
import 'package:googleservices/view/YoutubeScreenView/youtubeScreen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:googleservices/utils/textVariables/textVariable.dart';

Widget getBodySecond(context) {
  return Column(
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
      audioButton(),
      expandedWidget(),
      if (imgUrl == 'youtube.png')
        Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.all(0),
            height: SizeConfig.blockSizeVertical * 30,
            width: SizeConfig.blockSizeHorizontal * 80,
            child: YoutubeVideo()),
    ],
  );
}
