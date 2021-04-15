import 'package:googleservices/interface/GetRequestInterface.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:googleservices/services/GetRequestService.dart';

fetchAlbum(BuildContext context) {
  return GetRequestService().fetchAlbum(context);
}
