import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:hotel_booking/constants/color_constants.dart';
import 'package:hotel_booking/home_phase/booking/home_booking.dart';
import 'package:hotel_booking/home_phase/home_recentbooked.dart';
import 'package:hotel_booking/home_phase/home_search.dart';
import 'package:hotel_booking/home_phase/profile/profile_one.dart';

import 'home_1.dart';

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({super.key});

  @override
  State<bottomNavigation> createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  int selctindex=0;
  List page=[
    firstHome(),
   thirdHome(),
    bookingOne(),
    profileOne(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorconst.thirdcolor,
      body: page[selctindex],
      bottomNavigationBar: BottomBarBubble(
        backgroundColor: colorconst.thirdcolor,
          selectedIndex: selctindex,
          onSelect: (value) {
            selctindex=value;
            setState(() {

            });
          },
          items: [
            BottomBarItem(
              iconData: Icons.home,
              label: "Home",
            ),
            BottomBarItem(
              iconData: Icons.search_outlined,
              label: "Search"
            ),
            BottomBarItem(
              iconData: Icons.notes_outlined,
              label: "Booking"
            ),
            BottomBarItem(
              iconData: Icons.person,
              label: "Profile"
            )
          ]
      ),
    );
  }
}
