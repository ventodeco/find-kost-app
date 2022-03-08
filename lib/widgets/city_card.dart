import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 120,
      color: Color(0xffF6F7F8),
      child: Column(
        children: [
          Image.asset(
            'city1.png',
            width: 120,
            height: 102,
            // fit: ,
          ),
        ],
      ),
    );
  }
}
