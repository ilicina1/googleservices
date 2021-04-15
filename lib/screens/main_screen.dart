import 'package:flutter/material.dart';
import 'package:googleservices/size_config.dart';
import 'package:flutter/src/rendering/box.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/google_text.png',
                width: SizeConfig.blockSizeHorizontal * 70,
                height: SizeConfig.blockSizeVertical * 20,
              ),
            ],
          ),
          Container(
            height: 100,
            child: StaggeredGridView.countBuilder(
                shrinkWrap: false,
                crossAxisCount: 2,
                itemBuilder: (BuildContext context, int index) => new Container(
                    height: 40,
                    color: Colors.green,
                    child: new Center(
                      child: new CircleAvatar(
                        backgroundColor: Colors.white,
                        child: new Text('$index'),
                      ),
                    )),
                staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(2, index.isEven ? 2 : 1)),
          ),
        ],
      ),
    ));
  }
}
