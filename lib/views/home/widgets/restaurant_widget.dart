import 'package:bodecart/common/app_style.dart';
import 'package:bodecart/common/reusable_text.dart';
import 'package:bodecart/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantWidget extends StatelessWidget {
  const RestaurantWidget({
    super.key,
    required this.image,
    required this.logo,
    required this.title,
    required this.time,
    required this.rating,
    this.onTap,
  });

  final String image;
  final String logo;
  final String title;
  final String time;
  final String rating;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(right: 12.w),
        child: Container(
          width: width * 0.75,
          height: 192.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: kLightWhite,
          ),
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              Padding(
                padding: EdgeInsets.all(8.w),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: SizedBox(
                        height: 112.h,
                        width: width * 0.8,
                        child: Image.network(image,fit: BoxFit.fitWidth,),
                      ),
                    ),
                    Positioned(
                      right: 10.w,
                      top: 10.h,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50.r),
                        child: Container(
                          color: kLightWhite,
                          child: Padding(padding: EdgeInsets.all(2.h),
                          child: Image.network(logo, height: 20.h, width: 20.h, fit: BoxFit.cover,),
                        ),
                      ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(text: title, style: appStyle(12, FontWeight.w500, kDark)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ReusableText(text: time, style: appStyle(10, FontWeight.w400, kGray)),
                        ReusableText(text: "$rating ratings", style: appStyle(10, FontWeight.w400, kGray)),
                      ],

                    ),
                    Row(
                      children: [
                        RatingBarIndicator(
                          rating: double.parse(rating),
                          itemBuilder: (context, index) => const Icon(
                            Icons.star,
                            color: kSecondary,
                          ),
                          itemCount: 5,
                          itemSize: 15.h,
                          direction: Axis.horizontal,
                        ),
                        SizedBox(width: 10.w,),
                        ReusableText(text: rating, style: appStyle(10, FontWeight.w400, kGray)),
                      ]
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
