import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:googleservices/interface/GetRequestInterface.dart';
import 'package:googleservices/interface/GetKarticaPushInterface.dart';
import 'package:googleservices/view/GetReqView/pages/getreq_screen.dart';
import 'package:googleservices/view/SecondScreenView/pages/second_screen.dart';
import 'package:http/http.dart' as http;

class GetKarticaPushService implements GetKarticaPushInterface {
  @override
  karticaButtonPush(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondScreen("Google services"),
      ),
    );
  }
}
