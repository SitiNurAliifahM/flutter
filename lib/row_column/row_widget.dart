import 'package:flutter/material.dart';

class BelajarRow extends StatelessWidget{
  @override
    Widget build(BuildContext context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('ini row 1'),
          Text('ini row 2'),
          Text('ini row 3')
        ]
      );
    }
}