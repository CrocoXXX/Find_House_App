import 'package:find_house_app/models/tips_model.dart';
import 'package:find_house_app/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;

  TipsCard(this.tips);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Image.asset(
            tips.imageUrl,
            width: 80,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tips.title,
                style: blackStyle.copyWith(
                  fontSize: 18,
                ),
              ),
              Text(
                'Updated ${tips.updatedAt}',
                style: lightStyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_right,
              color: greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
