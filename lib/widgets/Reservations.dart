import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class reservation_block extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 208.h,
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
              "Reservations",
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                color: const Color(0xFF000000),
              ),
            ),
          ),
          SizedBox(height: 22.h),
          reservation(),
        ],
      ),
    );
  }

  Widget reservation() {
    List Items = [
      {"Image": "assets/images/Bus.png", "name": "Bus"},
      {"Image": "assets/images/flight.png", "name": "Flight"},
      {"Image": "assets/images/holiday.png", "name": "Holiday"},
      {"Image": "assets/images/hotels.png", "name": "Hotels"},
      {"Image": "assets/images/trains.png", "name": "Trains"},
    ];
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18.w),
      child: SizedBox(height: 143.h,
        child: GridView.builder(itemCount: Items.length,
          physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5.sp,
              mainAxisSpacing: 0.sp,
              crossAxisCount: 4),
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: Image.asset(
                    Items[index]["Image"],
                    width: 44.w,height: 34.h,
                  ),onTap: () {},
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 40.w,
                  child: Text(
                    Items[index]["name"],
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
            );
          },),
      ),
    );
  }
}
