import 'package:flutter/material.dart';
import 'package:googleservices/utils/style/style.dart';
import 'package:googleservices/utils/textVariables/textVariable.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:easy_localization/easy_localization.dart';

Future<String> fetchAlbum() async {
  final response = await http.get(Uri.https('klix.ba',
      '/vijesti/bih/na-danasnji-dan-osnovana-je-armija-republike-bih-temelj-oruzanih-snaga-nase-zemlje/210415024'));

  if (response.statusCode == 200) {
    return jsonDecode(response.body.toString());
  } else {
    throw Exception('Neuspjesan GET request');
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

                var response = await http.get(Uri.https('klix.ba',
                    '/vijesti/bih/na-danasnji-dan-osnovana-je-armija-republike-bih-temelj-oruzanih-snaga-nase-zemlje/210415024'));
                if (response.statusCode == 200) {
                  htmlToParse = response.body;
                  print(htmlToParse);
                } else {
                  EasyLoading.show(status: 'loading...');
                }
              }),
        ),
      ],
    );
  }
}
