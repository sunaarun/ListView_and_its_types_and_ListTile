import 'package:flutter/material.dart';

List<String> listItems = [
  "One",
  "Two",
  "Three",
  "Four",
  "Five",
  "Six",
  "One",
  "Two",
  "Three",
  "Four",
  "Five",
  "Six",
  "One",
  "Two",
  "Three",
  "Four",
  "Five",
  "Six",
  "One",
  "Two",
  "Three",
  "Four",
  "Five",
  "Six"
];

class MyCustomDelegate extends SliverChildDelegate {
  @override
  int get estimatedChildCount => listItems.length;

  @override
  bool shouldRebuild(SliverChildDelegate oldDelegate) {
    return true;
  }

  @override
  Widget? build(BuildContext context, int index) {
    if (index < estimatedChildCount) {
      return Container(
        height: 70,
        //color: Colors.pink[200],
        decoration: BoxDecoration(
            color: Colors.pink[100],
            border: Border.all(color: Colors.purple, width: 2)),
        padding: new EdgeInsets.only(top: 16.0),
        child: new Text(listItems[index]),
      );
    } else {
      return null;
    }
  }

}