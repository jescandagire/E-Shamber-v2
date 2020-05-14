import 'package:flutter/material.dart';
import '../models/farm2_api.dart';
class FarmTile extends StatelessWidget {
  final Farm _farm;
  FarmTile(this._farm);

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      ListTile(
        title: Text(_farm.name),
        subtitle: Text(_farm.tagline),
        leading: Container(
            margin: EdgeInsets.only(left: 6.0),
            child: Image.network(_farm.image_url, height: 50.0, fit: BoxFit.fill,)
        ),
      ),
      Divider()
    ],
  );
}