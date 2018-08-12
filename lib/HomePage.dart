import 'package:anatomika/DataModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:scoped_model/scoped_model.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ScopedModelDescendant<DataModel>(
        builder: (context, child, model) => new Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: new StaggeredGridView.count(
              crossAxisCount: 4,
              staggeredTiles: model.staggeredTiles ,
              children:       model.tileData,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              padding: const EdgeInsets.all(4.0)
          ))
    );
  }
}
