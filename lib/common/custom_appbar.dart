import 'package:bodecart/common/app_style.dart';
import 'package:bodecart/common/reusable_text.dart';
import 'package:bodecart/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      width: width,
      height: 110.h,
      color: kOffWhite,
      child: Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 22.r,
                  //backgroundColor: kSecondary,
                  backgroundImage: const AssetImage(
                    'assets/images/profile_avatar.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsetsGeometry.only(bottom: 6.h, left: 8.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                        text: "Deliver to",
                        style: appStyle(12, FontWeight.w600, kSecondary),
                      ),
                      SizedBox(
                        width: width * 0.65,
                        child: Text(
                          "16768 21st Ave N, Plymouth, MN 55447",
                          overflow: TextOverflow.ellipsis,
                          style: appStyle(11, FontWeight.normal, kGrayLight),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Text(getTimeOfDay(), style: const TextStyle(fontSize: 35)),
          ],
        ),
      ),
    );
  }

  String getTimeOfDay() {
    DateTime now = DateTime.now();
    int hour = now.hour;
    if (hour >= 0 && hour < 12) {
      return " ☀️ ";
    } else if (hour >= 12 && hour < 16) {
      return " ⛅ ";
    } else {
      return " 🌙 ";
    }
  }
}
