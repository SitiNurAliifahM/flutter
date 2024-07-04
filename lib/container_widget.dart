import 'package:flutter/material.dart';

class BelajarContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
        image: DecorationImage(
          image: NetworkImage('https://static.republika.co.id/uploads/images/xlarge/_230531154810-369.png'),
          fit: BoxFit.cover)
        ),
      child: Center(
        child: Text("Spider-man",
        style: TextStyle(color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 24
          ),
        ),
      ),
    );
  }
}