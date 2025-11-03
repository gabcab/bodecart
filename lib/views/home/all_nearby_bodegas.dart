import 'package:bodecart/common/app_style.dart';
import 'package:bodecart/common/back_ground_container.dart';
import 'package:bodecart/common/reusable_text.dart';
import 'package:bodecart/constants/constants.dart';
import 'package:bodecart/constants/uidata.dart';
import 'package:bodecart/views/home/widgets/restaurant_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllNearbyBodegas extends StatelessWidget {
  const AllNearbyBodegas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: ReusableText(text: "All Near By Bodegas", style: appStyle(13, FontWeight.w600, kGray)),
      ),
      body: BackgroundContainer(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(12.w),
            child: ListView(
            children: List.generate(restaurants.length, (i) {
              var restaurant = restaurants[i];
              return RestaurantTile(restaurant: restaurant,);
            }),  
            ),
          ),
          ),
    );
  }
}