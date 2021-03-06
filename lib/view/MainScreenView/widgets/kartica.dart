import 'package:flutter/material.dart';
import 'package:googleservices/utils/shared/size_config.dart';
import 'package:googleservices/utils/style/style.dart';
import 'package:googleservices/utils/textVariables/textVariable.dart';
import 'package:googleservices/utils/dummyData/dummyData.dart';
import 'package:googleservices/view/SecondScreenView/pages/secondScreen.dart';

class KarticaWidget extends StatelessWidget {
  int index;

  KarticaWidget(this.index);
  //ako se ne proslijedi nista neka ovo bude defaultni
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(children: [
          GestureDetector(
            onTap: () {
              naslov = nazivAplikacije[index];
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(),
                ),
              );
            },
            child: Container(
              width: SizeConfig.screenWidth * 0.5,
              height: 174,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 110,
                      child: Image.asset(
                        'assets/images/' + slike[index],
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(children: [
                          Text(
                            nazivAplikacije[index][0].toUpperCase() +
                                nazivAplikacije[index].substring(1),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
                shape: Styles.rectangleBorder,
                elevation: 5,
                margin: EdgeInsets.all(10),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
