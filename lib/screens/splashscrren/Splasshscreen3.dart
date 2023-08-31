import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaan_pay/screens/login/Login.dart';
import 'package:scaan_pay/screens/signin/sign_up.dart';
import 'package:scaan_pay/widgets/elevatedbutton.dart';
import 'package:scaan_pay/widgets/skip_button.dart';

import '../../widgets/custom_splashtext.dart';


class splashscreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              skipbutton(),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:24.w),
                child: SizedBox(
                  height: 355.h,
                  width: double.infinity,
                  child: Stack(children: [
                    Image.asset('assets/images/img_3.png'),
                    Positioned(
                        top: 96.h,
                        left: 185.w,
                        width: 100.w,
                        height: 260.81.h,
                        child: Image.asset(
                          'assets/images/img_4.png',
                        )),
                    Positioned(
                        top: 150.h,
                        left: 258.w,
                        width: 54.w,
                        height: 31.62.h,
                        child: Image.asset('assets/images/img_5.png'))
                  ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w,),
                child: SizedBox(
                    width: 197.w,
                    height: 72.h,
                    child: splash_text(text: 'We Give Best Services')),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w,right: 16.w,top: 9.h),
                child: SizedBox(width: 328.w, height: 44.h,
                  child: splashtext(
                        text:
                            'We Do Recharges, Money Transfer, \nBill Payment with 0 Charges.'),
                )),
              Padding(
                padding: EdgeInsets.only(top: 90.h),
                child: elevatedButton(
                  text: 'SignUp',
                  ontap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return signup();
                      },
                    ));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.sp),
                child: Center(
                  child: SizedBox(
                    width: 152.w,
                    height: 22.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already a Member?',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 12.sp)),
                        SizedBox(width: 4.w),
                        InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return loginpage();
                              },));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w900),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30.h),
                child: Center(
                  child: SizedBox(
                    height: 3.h,
                    width: 39.w,
                    child: Row(children: [
                      Container(
                        width: 7.w,
                        height: 3.h,
                        decoration: BoxDecoration(
                            color: Color(0xFFC7C7C7),
                            borderRadius: BorderRadius.circular(10.0.r)),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Container(
                        width: 7.w,
                        height: 3.h,
                        decoration: BoxDecoration(
                            color: Color(0xFFC7C7C7),
                            borderRadius: BorderRadius.circular(10.0.r)),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      Container(
                        width: 17.w,
                        height: 3.h,
                        decoration: BoxDecoration(
                            color: Color(0xFF5A64BF),
                            borderRadius: BorderRadius.circular(10.0.r)),
                      ),
                    ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
