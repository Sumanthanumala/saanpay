import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaan_pay/screens/Notification.dart';

class custom_appbar extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return AppBar(backgroundColor: const Color(0xFFFFFFFF),
      automaticallyImplyLeading: false,
      leading: InkWell(onTap: () {},
        child: const CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage:AssetImage('assets/images/profile.png'),),
      ),
      titleSpacing: 0,
      title: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('SaanPay',
              style: TextStyle(
                  color: const Color(0xFF252525),
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp)),
          Row(
            children: [
              Text('UPI ID - rickey786@icici.in',
                  style: TextStyle(
                      color: const Color(0xFF252525),
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w500,
                      fontSize: 10.sp)
              ),
              SizedBox(width: 6.w,),
              InkWell(onTap: () {},
                child: Image.asset('assets/images/copy.png',
                  width: 13.w,height: 13.h,),
              )
            ],
          ),
        ],
      ),
      actions: [
        Row(
          children: [
            InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/images/search.png',
                  width: 22.w,
                  height: 22.h,
                )),
            SizedBox(width: 11.w),
            InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/images/gift.png',
                  width: 27.w,
                  height: 27.h,
                )),
            SizedBox(width: 11.w),
            InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return notification_page();
                  },));
                },
                child: Stack(
                  children: [
                    Image.asset(
                    'assets/images/bell.png',
                    width: 22.w,
                    height: 22.h,),
                    Positioned(left: 12.w,
                        child: CircleAvatar(radius: 5.r,
                          backgroundColor: const Color(0xFF008000),))
                  ],
                )),
            SizedBox(width: 16.w),
          ],
        )
      ],
    );
  }
}