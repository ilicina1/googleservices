import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Album {
  final String title;

  Album({@required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      title: json['title'],
    );
  }
}

Future<Album> fetchAlbum() async {
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
    return Center(
      child: ElevatedButton(
          child: Text("GET"),
          onPressed: () async {
            var response = await http.get(Uri.https('klix.ba',
                '/vijesti/bih/na-danasnji-dan-osnovana-je-armija-republike-bih-temelj-oruzanih-snaga-nase-zemlje/210415024'));
            if (response.statusCode == 200) {
              String htmlToParse = response.body;
              print(htmlToParse);
            } else {
              EasyLoading.show(status: 'loading...');
            }
          }),
    );
  }
}
