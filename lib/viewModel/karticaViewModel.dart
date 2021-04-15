import 'package:googleservices/interface/GetRequestInterface.dart';

import 'package:flutter/material.dart';
import 'package:googleservices/interface/GetRequestInterface.dart';
import 'package:googleservices/interface/GetKarticaPushInterface.dart';
import 'package:googleservices/services/GetKarticaPushService.dart';
import 'package:googleservices/shared/size_config.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:googleservices/services/GetRequestService.dart';

karticaButtonPush(BuildContext context) {
  return GetKarticaPushService().karticaButtonPush(context);
}
