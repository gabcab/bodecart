import 'package:bodecart/common/app_style.dart';
import 'package:bodecart/common/reusable_text.dart';
import 'package:bodecart/constants/constants.dart';
import 'package:bodecart/views/category/category_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.category,
  });

  final dynamic category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Get.to(() =>const CategoryPage(),
        transition: Transition.fadeIn,
        duration: const Duration(milliseconds: 500));
      },
      leading: CircleAvatar(
        radius: 18.r,
        backgroundColor: kGrayLight,
        child: Image.network(category['imageUrl'], fit: BoxFit.contain),
      ),
      title: ReusableText(
        text: category['title'],
        style: appStyle(12, FontWeight.normal, kGray),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_rounded,
        size: 15.r,
        color: kGray,
      ),
    );
  }
}
