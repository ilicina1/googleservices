import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:googleservices/utils/style/style.dart';
import 'package:googleservices/utils/textVariables/textVariable.dart';

Widget audioButton() {
  return Padding(
    padding: const EdgeInsets.only(top: 50.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          naslov,
          style: Styles.naslovStyle,
        ),
        TextButton(
          onPressed: () => AudioCache().play('audio/' + audioUrl),
          child: Styles.buttonPlay,
        ),
      ],
    ),
  );
}
