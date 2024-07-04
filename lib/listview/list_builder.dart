import 'package:flutter/material.dart';
import 'package:projek/main.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyApp(),
    ));

class ListBuilder extends StatelessWidget {
  var androidVersions = [
    "Android Cupcake",
    "Android Donut",
    "Android Eclair",
    "Android Froyo",
    "Android Gingerbread",
    "Android Honeycomb",
    "Android Ice Cream Sandwich",
    "Android Jelly Bean",
    "Android Kitkat",
    "Android Lollipop",
    "Android Marshmallow",
    "Android Nougat",
    "Android Oreo",
    "Android Pie",
    "Android Q"
  ];

  @override
  Widget build(BuildContext) {
    return ListView.builder(
      itemCount: androidVersions.length,
      itemBuilder: (context, i) {
        return Padding(
          padding: EdgeInsets.all(10),
          child: Text(i.toString() + " - " + androidVersions[i]),
        );
      },
    );
  }
}
