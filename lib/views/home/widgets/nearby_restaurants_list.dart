//import 'package:bodecart/constants/constants.dart';
import 'package:bodecart/constants/uidata.dart';
import 'package:bodecart/views/home/widgets/restaurant_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NearbyRestaurants extends StatelessWidget {
  const NearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.w),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (i) {
          var restaurant = restaurants[i];
          return RestaurantWidget(
            image: restaurant['imageUrl'],
            logo: restaurant['logoUrl'],
            title: restaurant['title'],
            time: restaurant['time'],
            rating: restaurant['ratingCount'],
          );
        }),
      ),
    );
  }
}
