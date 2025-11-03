import 'package:bodecart/common/app_style.dart';
import 'package:bodecart/common/back_ground_container.dart';
import 'package:bodecart/common/reusable_text.dart';
import 'package:bodecart/constants/constants.dart';
import 'package:bodecart/constants/uidata.dart';
//import 'package:bodecart/views/category/category_page.dart';
import 'package:bodecart/views/category/widgets/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'package:get/get.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: ReusableText(
          text: "All Categories",
          style: appStyle(12, FontWeight.w600, kGray),
        ),
      ),
      body: BackgroundContainer(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(left: 12.w, top: 10.h),
          height: height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(categories.length, (i) {
              var category = categories[i];
              return CategoryTile(category: category);
            }),
          ),
        ),
      ),
    );
  }
}
