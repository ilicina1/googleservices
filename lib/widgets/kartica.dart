import 'package:flutter/material.dart';

class KarticaWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Column(children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 335,
              height: 174,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    SizedBox(
                      width: 335,
                      height: 110,
                      child: Image.asset(
                        'assets/images/test.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Expanded(
                        child: Column(children: [
                      Text('Firebase'),
                      Text('GoogleServices')
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
