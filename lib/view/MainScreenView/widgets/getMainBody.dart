import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:googleservices/view/MainScreenView/widgets/firstRow.dart';
import 'package:googleservices/view/YoutubeScreenView/youtubeScreen.dart';
import 'package:googleservices/utils/shared/size_config.dart';
import 'package:googleservices/view/MainScreenView/widgets/kartica.dart';

Widget getMainBody(BuildContext context) {
  return Container(
    height: SizeConfig.blockSizeVertical * 100,
    child: Column(
      children: [
        firstRow(context),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => YoutubeVideo(),
              ),
            );
          },
          child: Icon(
            Icons.video_collection,
            size: SizeConfig.screenWidth * 0.1,
          ),
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
                  new StaggeredTile.count(1, index.isEven ? 1 : 1)),
        ),
      ],
    ),
  );
}
