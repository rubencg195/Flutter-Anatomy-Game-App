import 'package:anatomika/DataModel.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'MainPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScopedModel<DataModel>(
      model: new DataModel(),
      child: new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ANATOMIKA',
        theme: new ThemeData(
          primarySwatch: Colors.red,
        ),
        home: new Main()
      ),
    );
  }
}
