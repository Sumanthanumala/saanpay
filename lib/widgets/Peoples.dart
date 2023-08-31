import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class peoples_block extends StatefulWidget {
  @override
  State<peoples_block> createState() => _peoples_blockState();
}

class _peoples_blockState extends State<peoples_block> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 133.h,
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
              "Peoples",
              style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
                color: const Color(0xFF000000),
              ),
            ),
          ),
          SizedBox(height: 16.h),
          people(),
        ],
      ),
    );
  }

  Widget people() {
    List Items = [
      {"Image": "assets/images/hari.png", "name": "Hari"},
      {"Image": "assets/images/arvind.png", "name": "arvind"},
      {"Image": "assets/images/vishnu.png", "name": "Vishnu"},
      {"Image": "assets/images/bharath.png", "name": "Bharath"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: SizedBox(
        height: 69.h,
        width: 304.w,
        child: Wrap( alignment: WrapAlignment.spaceEvenly,
          children:[
            for (int i=0; i<Items.length;i++)
            Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      child: CircleAvatar(
                        child: Image.asset(
                          Items[i]["Image"],
                          width: 50.w,
                        ),
                      ),onTap: () {},
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      width: 46.w,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: Image.asset('assets/images/More.png',
                    width: 50.w,
                  ),onTap: () {},
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  width: 46.w,
                  child: Text('More',
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
        )
      ),
    );
  }
}
