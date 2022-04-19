import 'package:find_kost/models/city.dart';
import 'package:find_kost/models/space.dart';
import 'package:find_kost/models/tips.dart';
import 'package:find_kost/theme.dart';
import 'package:find_kost/widgets/bottom_navbar_item.dart';
import 'package:find_kost/widgets/city_card.dart';
import 'package:find_kost/widgets/space_card.dart';
import 'package:find_kost/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // NOTE : HEADING
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            // NOTE: POPULAR CITIES
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'city1.png',
                      isPopular: false,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 2,
                      name: 'Bandung',
                      imageUrl: 'city2.png',
                      isPopular: true,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    City(
                      id: 3,
                      name: 'Solo',
                      imageUrl: 'city3.png',
                      isPopular: false,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // RECOMMENDED SPACE
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 16,
                  ),
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Kos Uhuy',
                      city: 'Baturetno',
                      country: 'Wonogiri',
                      imageUrl: 'space1.png',
                      price: 10,
                      rating: 2,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Kos Uhuy',
                      city: 'Baturetno',
                      country: 'Wonogiri',
                      imageUrl: 'space2.png',
                      price: 10,
                      rating: 2,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Kos Uhuy',
                      city: 'Baturetno',
                      country: 'Wonogiri',
                      imageUrl: 'space3.png',
                      price: 10,
                      rating: 2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // TIPS AND GUIDANCE
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Tips & Guidance',
                style: blackTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'City Guidelines',
                      updatedAt: '20 Apr',
                      imageUrl: 'tips1.png',
                      link: '',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'Jakarta Fairship',
                      updatedAt: '22 Apr',
                      imageUrl: 'tips2.png',
                      link: '',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: MediaQuery.of(context).size.width - (2 * edge),
        height: 65,
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'icon_home_solid.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'icon_mail_solid.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'icon_card_solid.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'icon_love_solid.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
