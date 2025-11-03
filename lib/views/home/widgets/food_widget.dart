import 'package:bodecart/common/app_style.dart';
import 'package:bodecart/common/reusable_text.dart';
import 'package:bodecart/constants/constants.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodWidget extends StatelessWidget {
  const FoodWidget({
    super.key,
    required this.image,
    required this.title,
    required this.time,
    required this.price,
    this.onTap,
  });

  final String image;
  final String title;
  final String time;
  final String price;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: Container(
          width: width * 0.75,
          height: 180.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: kLightWhite,
          ),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.all(8.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: SizedBox(
                    height: 112.h,
                    width: width * 0.8,
                    child: Image.network(image,fit: BoxFit.fitWidth,),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(text: title, style: appStyle(12, FontWeight.w500, kDark)),
                        ReusableText(text: "\$$price", style: appStyle(12, FontWeight.w600, kPrimary)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(
                          text: "Delivery time", 
                          style: appStyle(9, FontWeight.w500, kGray)),
                        ReusableText(
                          text: time, 
                          style: appStyle(9, FontWeight.w500, kDark)),
                        //ReusableText(text: "$rating ratings", style: appStyle(10, FontWeight.w400, kGray)),
                      ],

                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
