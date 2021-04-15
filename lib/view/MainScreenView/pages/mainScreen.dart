import 'package:flutter/material.dart';
import 'package:googleservices/view/MainScreenView/widgets/getMainBody.dart';
import 'package:googleservices/utils/shared/size_config.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: getMainBody(this.context),
    );
  }
}
