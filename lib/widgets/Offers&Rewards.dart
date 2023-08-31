import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class rewards_block extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 134.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color(0xFFEAF7FF),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8.h,left: 8.w),
            child: Text(
              "Offers & Rewards",
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                color: const Color(0xFF000000),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          rewards(),
        ],
      ),
    );
  }

  Widget rewards() {
    List Items = [
      {"Image": "assets/images/offers.png", "name": "Offers"},
      {"Image": "assets/images/refer&earn.png", "name": "Refer & Earn"},
      {"Image": "assets/images/scratch_cards.png", "name": "Scratch Cards"},
    ];
    return Padding(
      padding: EdgeInsets.only(left: 25.w),
      child: SizedBox(width: 203.w,
        height: 72.h,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i=0; i<Items.length;i++)
            Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        child: Image.asset(
                          Items[i]["Image"],
                          width: 42.w,
                        ),onTap: () {},
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(
                        width: 67.w,
                        child: Text(
                          Items[i]["name"],
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF515151),
                              fontSize: 11.sp),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
