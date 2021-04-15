import 'package:flutter/material.dart';
import 'package:googleservices/services/GetRequestService.dart';

fetchAlbum(BuildContext context) {
  return GetRequestService().fetchAlbum(context);
}
