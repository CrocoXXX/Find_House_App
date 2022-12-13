import 'package:find_house_app/pages/error_page.dart';
import 'package:find_house_app/theme.dart';
import 'package:find_house_app/widgets/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kuretakeso Hott',
                  style: blackStyle.copyWith(
                    fontSize: 22,
                  ),
                ),
                const SizedBox(height: 2),
                Text.rich(
                  TextSpan(
                    text: '\$52',
                    style: purpleStyle.copyWith(
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: ' / month',
                        style: lightStyle.copyWith(
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  'assets/icon_popular.png',
                  width: 20,
                ),
                const SizedBox(width: 2),
                Image.asset(
                  'assets/icon_popular.png',
                  width: 20,
                ),
                const SizedBox(width: 2),
                Image.asset(
                  'assets/icon_popular.png',
                  width: 20,
                ),
                const SizedBox(width: 2),
                Image.asset(
                  'assets/icon_popular.png',
                  width: 20,
                ),
                const SizedBox(width: 2),
                Image.asset(
                  'assets/icon_popular.png',
                  width: 20,
                  color: const Color(0xff989BA1),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget facilities() {
      return Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Main Facilities',
              style: regularBlackStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FacilityItem(
                  imageUrl: 'assets/icon_bar.png',
                  name: 'kitchen',
                  total: 2,
                ),
                FacilityItem(
                  imageUrl: 'assets/icon_bed.png',
                  name: 'bedroom',
                  total: 3,
                ),
                FacilityItem(
                  imageUrl: 'assets/icon_cupboard.png',
                  name: 'Big Lemari',
                  total: 3,
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget photos() {
      return Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Photos',
              style: regularBlackStyle.copyWith(fontSize: 16),
            ),
            const SizedBox(height: 12),
            Container(
              height: 88,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/photo1.png',
                      width: 110,
                      height: 88,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 18),
                    Image.asset(
                      'assets/photo2.png',
                      width: 110,
                      height: 88,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 18),
                    Image.asset(
                      'assets/photo3.png',
                      width: 110,
                      height: 88,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 18),
                    Image.asset(
                      'assets/photo4.png',
                      width: 110,
                      height: 88,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 18),
                    Image.asset(
                      'assets/photo5.png',
                      width: 110,
                      height: 88,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget location() {
      return Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location',
              style: regularBlackStyle.copyWith(fontSize: 16),
            ),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Jln. Kappan Sukses No. 20 \nPalembang',
                  style: regularBlackStyle.copyWith(
                    fontSize: 14,
                    color: const Color(0xff7A7E86),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    final url =
                        // Uri.parse('https://goo.gl/maps/SyZx2yjWB1yR6AeH8');
                        Uri.parse('qwertyuiop');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url);
                    } else {
                      // throw 'Could not lauch $url';
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ErrorPage(),
                        ),
                      );
                    }
                  },
                  child: Image.asset(
                    'assets/btn_map.png',
                    width: 40,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        padding: const EdgeInsets.only(bottom: 40),
        width: MediaQuery.of(context).size.width - (2 * 24),
        height: 100,
        child: TextButton(
          onPressed: () async {
            // To open the default phone app
            final url = Uri.parse('tel:+123 456 789');
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            } else {
              throw 'Could not Lauch $url';
            }
          },
          style: TextButton.styleFrom(
            backgroundColor: purpleColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(17),
            ),
          ),
          child: Text(
            'Book Now',
            style: buttonStyle.copyWith(fontSize: 18),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/city1.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 330),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 30, left: 24, right: 24),
                        child: Column(
                          children: [
                            header(),
                            facilities(),
                            photos(),
                            location(),
                            button(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/btn_wishlist.png',
                    width: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
