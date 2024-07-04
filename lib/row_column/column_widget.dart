import 'package:flutter/material.dart';

class BelajarColumn extends StatelessWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1694113249.
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('ini column 1'),
        Text('ini column 2'),
        Text('ini column 3')
      ]
    );
  }
}