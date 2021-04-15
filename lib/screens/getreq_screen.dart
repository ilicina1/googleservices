import 'package:flutter/material.dart';
import 'package:googleservices/utils/shared/size_config.dart';
import 'package:googleservices/utils/style/style.dart';
import 'package:googleservices/utils/textVariables/textVariable.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:easy_localization/easy_localization.dart';

<<<<<<< HEAD
class Album {
  final String title;

  Album({@required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      title: json['title'],
    );
  }
}

Future<Album> fetchAlbum(BuildContext context) async {
  var response = await http.get(Uri.https('klix.ba',
=======
Future<String> fetchAlbum() async {
  final response = await http.get(Uri.https('klix.ba',
>>>>>>> c6a819fb9d4e37f4d8cf076fb47abc250e77c6cb
      '/vijesti/bih/na-danasnji-dan-osnovana-je-armija-republike-bih-temelj-oruzanih-snaga-nase-zemlje/210415024'));
  if (response.statusCode == 200) {
    String htmlToParse = response.body.substring(55, 300);
    print(htmlToParse);
    showGeneralDialog(
      barrierLabel: "Barrier",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(
          milliseconds:
              1000), //da se brzo ne pokrene prema gore i samo djeluje kao da se
      //spawnalo
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
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim),
          child: child,
        );
      },
    );
  } else {
    EasyLoading.show(status: 'loading...');
  }
}

class GetReq extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        Center(
          child: ElevatedButton(
              child: Text("GET"),
              onPressed: () async {
                print(context.locale.toString());

<<<<<<< HEAD
                fetchAlbum(context);
=======
                var response = await http.get(Uri.https('klix.ba',
                    '/vijesti/bih/na-danasnji-dan-osnovana-je-armija-republike-bih-temelj-oruzanih-snaga-nase-zemlje/210415024'));
                if (response.statusCode == 200) {
                  htmlToParse = response.body;
                  print(htmlToParse);
                  showGeneralDialog(
                    barrierLabel: "Barrier",
                    barrierDismissible: true,
                    barrierColor: Colors.black.withOpacity(0.5),
                    transitionDuration: Duration(
                        milliseconds:
                            1000), //da se brzo ne pokrene prema gore i samo djeluje kao da se
                    //spawnalo
                    context: context,
                    pageBuilder: (_, __, ___) {
                      return Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 350,
                          child: Text(response.body),
                          margin:
                              EdgeInsets.only(bottom: 50, left: 12, right: 12),
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      );
                    },
                    transitionBuilder: (_, anim, __, child) {
                      return SlideTransition(
                        position: Tween(begin: Offset(0, 1), end: Offset(0, 0))
                            .animate(anim),
                        child: child,
                      );
                    },
                  );
                } else {
                  EasyLoading.show(status: 'loading...');
                }
>>>>>>> c6a819fb9d4e37f4d8cf076fb47abc250e77c6cb
              }),
        ),
      ],
    );
  }
}
