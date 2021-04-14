import 'package:flutter/material.dart';
import 'package:googleservices/services/size_config.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
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
        ],
      ),
    );
  }
}
