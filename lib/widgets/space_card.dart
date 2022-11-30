import 'package:find_house_app/models/space_model.dart';
import 'package:find_house_app/theme.dart';
import 'package:flutter/material.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  SpaceCard(this.space);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(
                    space.imageUrl,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/icon_popular.png',
                              width: 14,
                              height: 13,
                            ),
                            const SizedBox(width: 3),
                            Text(
                              '${space.rating}/5',
                              style: ratingStyle.copyWith(
                                fontSize: 13,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: blackStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 2),
              Text.rich(
                TextSpan(
                    text: '\$${space.price}',
                    style: purpleStyle.copyWith(
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: ' / month',
                        style: lightStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ]),
              ),
              const SizedBox(height: 16),
              Text(
                '${space.city}, ${space.country}',
                style: lightStyle.copyWith(
                  fontSize: 14,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
