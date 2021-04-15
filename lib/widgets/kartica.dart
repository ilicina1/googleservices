import 'package:flutter/material.dart';
import 'package:googleservices/screens/second_screen.dart';
import 'package:googleservices/services/size_config.dart';

class KarticaWidget extends StatelessWidget {
  var nazivAplikacije = "nekaAplikacija";
  var linkSlike = "assets/images/test.jpg";

  KarticaWidget(this.nazivAplikacije, this.linkSlike);
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(nazivAplikacije),
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
                        'assets/images/' + linkSlike,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(children: [
                          Text(
                            nazivAplikacije[0].toUpperCase() +
                                nazivAplikacije.substring(1),
                          ),
                          // Text(nazivAplikacije)
                        ]),
                      ),
                    )
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
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
