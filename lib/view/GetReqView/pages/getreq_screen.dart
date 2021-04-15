import 'package:flutter/material.dart';
import 'package:googleservices/interface/GetRequestInterface.dart';
import 'package:googleservices/shared/size_config.dart';
import 'package:googleservices/viewModel/requestViewModel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:googleservices/services/GetRequestService.dart';

class Album {
  final String title;

  Album({@required this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      title: json['title'],
    );
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
                child: Icon(
                  Icons.arrow_back,
                  size: SizeConfig.screenWidth * 0.1,
                ),
              ),
            ],
          ),
        ),
        Center(
          child: ElevatedButton(
              child: Text("GET"),
              onPressed: () async {
                print(context.locale.toString());

                fetchAlbum(context);
              }),
        ),
      ],
    );
  }
}
