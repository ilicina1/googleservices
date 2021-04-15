import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:googleservices/utils/shared/size_config.dart';
import 'package:googleservices/utils/style/style.dart';
import 'package:googleservices/view/MainScreenView/widgets/kartica.dart';
import 'package:easy_localization/easy_localization.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: SizeConfig.blockSizeVertical * 100,
        child: Column(
          children: [
            Row(
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
                      print(value);
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
            ),
            Container(
              height: SizeConfig.screenHeight * 0.65,
              width: SizeConfig.screenWidth,
              child: StaggeredGridView.countBuilder(
                itemCount: 8,
                shrinkWrap: false,
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                itemBuilder: (BuildContext context, int index) {
                  return new KarticaWidget(index);
                },
                staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(1, index.isEven ? 1 : 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
