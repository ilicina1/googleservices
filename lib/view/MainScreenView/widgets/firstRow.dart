import 'package:flutter/material.dart';
import 'package:googleservices/utils/shared/size_config.dart';
import 'package:googleservices/utils/style/style.dart';
import 'package:easy_localization/easy_localization.dart';

Widget firstRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Image.asset(
        'assets/images/google_text.png',
        width: SizeConfig.blockSizeHorizontal * 70,
        height: SizeConfig.blockSizeVertical * 20,
      ),
      Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: DropdownButton(
          hint: Text('Language').tr(),
          icon: Styles.buttonLanguage,
          items: ["English", "Bosanski"].map(
            (String value) {
              return new DropdownMenuItem<String>(
                value: value,
                child: new Text('$value'),
              );
            },
          ).toList(),
          onChanged: (value) {
            // print(value);
            if (value == 'Bosanski') {
              // ignore: deprecated_member_use
              context.locale = Locale('bs', 'BA');
            } else {
              // ignore: deprecated_member_use
              context.locale = Locale('en', 'US');
            }
          },
        ),
      )
    ],
  );
}
