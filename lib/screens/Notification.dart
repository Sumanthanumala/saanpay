import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaan_pay/widgets/custom_appbar2.dart';

class notification_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(51.h),
            child: appbar(text: 'Notifications')),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Card(
            child: SizedBox(
                width: 328.w,
                height: 106.h,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Stack(children: [
                          Image.asset(
                            'assets/images/profile.png',
                            width: 46.w,
                            height: 46.h,
                          ),
                          Positioned(
                              left: 30.w,
                              child: CircleAvatar(
                                radius: 5.r,
                                backgroundColor: const Color(0xFF008000),
                              ))
                        ]),
                        SizedBox(width: 10.w,),
                        SizedBox(
                            width: 236.w,
                            height: 36.h,
                            child: Text(
                                'Vishnu is Requesting Room Rent for the of month of Dec’ 2022 ',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp,
                              color: const Color(0xFF252525))),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 33.h,left: 5.w),
                          child: SizedBox(width: 8.w,height: 8.w,
                              child: InkWell(onTap: () {},
                                child: Icon(Icons.close,size: 16.sp,
                                  color: const Color(0xFF252525),),
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 62.w),
                      child: Text(
                        '1 day ago',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 10.sp,
                            color: const Color(0xFF6F6C6C)),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 238.w),
                      child: SizedBox(width: 76.w,height: 26.h,
                        child: ElevatedButton(onPressed: (){},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF5A64BF),
                                textStyle: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFFFFFFFF)),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(5.r))),
                            child: const Text('Pay Now',)
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ));
  }
}
