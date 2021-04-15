import 'package:flutter/material.dart';
import 'package:googleservices/utils/style/style.dart';

Widget expandedWidget() {
  return Expanded(
    child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        alignment: Alignment.topCenter,
        decoration: Styles.boxDecoration,
        child: Text(
          'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttestesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttes',
          style: Styles.bigTextStyle,
        ),
      ),
    ),
  );
}
