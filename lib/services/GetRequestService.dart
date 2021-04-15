import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:googleservices/interface/GetRequestInterface.dart';
import 'package:http/http.dart' as http;
import 'package:googleservices/utils/textVariables/textVariable.dart';

class GetRequestService implements GetRequestInterface {
  @override
  void fetchAlbum(BuildContext context) async {
    var response = await http.get(Uri.https('klix.ba',
        '/vijesti/bih/na-danasnji-dan-osnovana-je-armija-republike-bih-temelj-oruzanih-snaga-nase-zemlje/210415024'));
    if (response.statusCode == 200) {
      htmlToParse = response.body.substring(55, 300);
      showGeneralDialog(
        barrierLabel: "Barrier",
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.5),
        transitionDuration: Duration(
          //da se brzo ne pokrene prema gore i samo djeluje kao da se spawnalo
          milliseconds: 1000,
        ),
        context: context,
        pageBuilder: (_, __, ___) {
          return Align(
            alignment: Alignment.center,
            child: Container(
              height: 350,
              child: Text(response.body),
              margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          );
        },
        transitionBuilder: (_, anim, __, child) {
          return SlideTransition(
            position:
                Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
            child: child,
          );
        },
      );
    } else {
      EasyLoading.show(status: 'loading...');
    }
  }
}
