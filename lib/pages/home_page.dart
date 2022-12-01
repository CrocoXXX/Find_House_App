import 'package:find_house_app/models/city_model.dart';
import 'package:find_house_app/models/space_model.dart';
import 'package:find_house_app/models/tips_model.dart';
import 'package:find_house_app/theme.dart';
import 'package:find_house_app/widgets/bottom_navbar_item.dart';
import 'package:find_house_app/widgets/city_card.dart';
import 'package:find_house_app/widgets/space_card.dart';
import 'package:find_house_app/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: const EdgeInsets.only(top: 24, left: 24),
        width: 201,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore Now',
              style: blackStyle.copyWith(
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              'Mencari kosan yang cozy',
              style: greyStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      );
    }

    Widget cities() {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 30),
        // margin: const EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Text(
                'Popular Cities',
                style: regularBlackStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    CityCard(
                      City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/city1.png',
                        isPopular: false,
                      ),
                    ),
                    const SizedBox(width: 20),
                    CityCard(
                      City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/city2.png',
                        isPopular: true,
                      ),
                    ),
                    const SizedBox(width: 20),
                    CityCard(
                      City(
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/city3.png',
                        isPopular: false,
                      ),
                    ),
                    CityCard(
                      City(
                        id: 4,
                        name: 'Palembang',
                        imageUrl: 'assets/city4.png',
                        isPopular: false,
                      ),
                    ),
                    const SizedBox(width: 20),
                    CityCard(
                      City(
                        id: 5,
                        name: 'Aceh',
                        imageUrl: 'assets/city5.png',
                        isPopular: true,
                      ),
                    ),
                    const SizedBox(width: 20),
                    CityCard(
                      City(
                        id: 6,
                        name: 'Bogor',
                        imageUrl: 'assets/city6.png',
                        isPopular: false,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget space() {
      return Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recommended Space',
              style: regularBlackStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            SpaceCard(
              Space(
                id: 1,
                name: 'Kuretakeso Hott',
                imageUrl: 'assets/space1.png',
                price: 52,
                city: 'Bandung',
                country: 'Germany',
                rating: 4,
              ),
            ),
            SpaceCard(
              Space(
                id: 2,
                name: 'Roemah Nenek',
                imageUrl: 'assets/space2.png',
                price: 11,
                city: 'Seattle',
                country: 'Bogor',
                rating: 5,
              ),
            ),
            SpaceCard(
              Space(
                id: 3,
                name: 'Darrling How',
                imageUrl: 'assets/space3.png',
                price: 20,
                city: 'Jakarta',
                country: 'Indonesia',
                rating: 3,
              ),
            ),
            SpaceCard(
              Space(
                id: 4,
                name: 'Orang Crown',
                imageUrl: 'assets/space4.png',
                price: 552,
                city: 'Halla',
                country: 'Sumatera',
                rating: 5,
              ),
            ),
            SpaceCard(
              Space(
                id: 5,
                name: 'City of Cactus',
                imageUrl: 'assets/space5.png',
                price: 20,
                city: 'Jakarta',
                country: 'Indonesia',
                rating: 3,
              ),
            ),
          ],
        ),
      );
    }

    Widget tips() {
      return Padding(
        padding: const EdgeInsets.only(left: 24, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tips & Guidance',
              style: regularBlackStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 16),
            TipsCard(
              Tips(
                id: 1,
                title: 'City Guidelines',
                imageUrl: 'assets/tips1.png',
                updatedAt: '20 Apr',
              ),
            ),
            TipsCard(
              Tips(
                id: 2,
                title: 'Jakarta Fairship',
                imageUrl: 'assets/tips2.png',
                updatedAt: '11 Dec',
              ),
            ),
            const SizedBox(height: 100),
          ],
        ),
      );
    }

    Widget bottomNavbar() {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Container(
          width: MediaQuery.of(context).size.width - (2 * 24),
          height: 65,
          margin: const EdgeInsets.only(left: 24),
          decoration: BoxDecoration(
            color: const Color(0xffF6F7F8),
            borderRadius: BorderRadius.circular(23),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavbarItem(
                index: 1,
                imageUrl: 'assets/icon_home.png',
                // isActive: true,
              ),
              BottomNavbarItem(
                index: 2,
                imageUrl: 'assets/icon_email.png',
                // isActive: false,
              ),
              BottomNavbarItem(
                index: 3,
                imageUrl: 'assets/icon_card.png',
                // isActive: false,
              ),
              BottomNavbarItem(
                index: 4,
                imageUrl: 'assets/icon_love.png',
                // isActive: false,
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              cities(),
              space(),
              tips(),
            ],
          ),
        ),
      ),
      floatingActionButton: bottomNavbar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
