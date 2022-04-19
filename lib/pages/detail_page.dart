import 'package:find_kost/pages/home_page.dart';
import 'package:find_kost/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'thumbnail3.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 30,
                horizontal: edge,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'btn_back.png',
                      width: 40,
                      height: 40,
                    ),
                  ),
                  Image.asset(
                    'btn_wishlist.png',
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
