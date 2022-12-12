import 'package:find_house_app/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int total;

  FacilityItem({
    required this.imageUrl,
    required this.name,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        const SizedBox(height: 8),
        Text.rich(
          TextSpan(
            text: '$total',
            style: purpleStyle.copyWith(fontSize: 14),
            children: [
              TextSpan(
                text: ' $name',
                style: lightStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
