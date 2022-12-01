import 'package:find_house_app/theme.dart';
import 'package:flutter/material.dart';

class BottomNavbarItem extends StatefulWidget {
  int index;
  String imageUrl;
  // bool isActive;

  BottomNavbarItem({
    required this.index,
    required this.imageUrl,
    // required this.isActive,
  });

  @override
  State<BottomNavbarItem> createState() => _BottomNavbarItemState();
}

class _BottomNavbarItemState extends State<BottomNavbarItem> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex == widget.index;
        });
      },
      child: Column(
        children: [
          const Spacer(),
          Image.asset(
            widget.imageUrl,
            width: 26,
            color: selectedIndex == widget.index
                ? purpleColor
                : const Color(0xff989BA1),
          ),
          const Spacer(),
          // widget.isActive
          selectedIndex == widget.index
              ? Container(
                  width: 30,
                  height: 2,
                  decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(1000),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
