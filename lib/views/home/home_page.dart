import 'package:bodecart/common/custom_appbar.dart';
import 'package:bodecart/common/custom_container.dart';
import 'package:bodecart/common/heading.dart';
import 'package:bodecart/constants/constants.dart';
import 'package:bodecart/views/home/all_fastest_foods.dart';
import 'package:bodecart/views/home/recomendations.dart';
import 'package:bodecart/views/home/widgets/category_list.dart';
import 'package:bodecart/views/home/all_nearby_bodegas.dart'; // Add this import or correct the path as needed
import 'package:bodecart/views/home/widgets/food_list.dart';
import 'package:bodecart/views/home/widgets/nearby_restaurants_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: CustomAppbar(),
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              const CategoryList(),
              Heading(text: "Nearby Bodegas", 
              onTap: () {
                Get.to(() => const AllNearbyBodegas(),
                transition: Transition.cupertino,
                duration: const Duration(milliseconds: 500),
                );
              }),
              const NearbyRestaurants(),
              Heading(text: "Try Something New", 
              onTap: () {
                Get.to(() => const Recomendations(),
                transition: Transition.cupertino,
                duration: const Duration(milliseconds: 500),
                );
              }),
              const FoodList(),
              Heading(text: "Fastest Closer To You", 
              onTap: () {
                Get.to(() => const AllFastestFoods(),
                transition: Transition.cupertino,
                duration: const Duration(milliseconds: 500),
                );
              }),
              const FoodList(),

            ],
          ),
        ),
      ),
    );
  }
}
