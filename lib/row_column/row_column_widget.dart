import 'package:flutter/material.dart';

class BelajarRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Text 1'),
            Text('Text 2'),
            Text('Text 3'),
          ],
        ),
        Text('Text'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Text 1'),
            Text('Text 2'),
            Text('Text 3'),
           ],
        ),
      ],
    );
  }
}