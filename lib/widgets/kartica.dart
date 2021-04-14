import 'package:flutter/material.dart';
import 'package:googleservices/size_config.dart';

class KarticaWidget extends StatelessWidget {
  var nazivServisa = "nekiNaziv";
  var nazivAplikacije = "nekaAplikacija";
  var linkSlike = "assets/images/test.jpg";

  KarticaWidget(this.nazivAplikacije, this.nazivServisa, this.linkSlike);
  //ako se ne proslijedi nista neka ovo bude defaultni
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(children: [
          GestureDetector(
            onTap: () {},
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
                        linkSlike,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                        child: Column(children: [
                      Text(nazivServisa),
                      Text(nazivAplikacije)
                    ]))
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
