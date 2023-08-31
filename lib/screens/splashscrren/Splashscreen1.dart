import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaan_pay/screens/splashscrren/Splashscreen2.dart';
import 'package:scaan_pay/widgets/custom_splashtext.dart';
import 'package:scaan_pay/widgets/elevatedbutton.dart';
import 'package:scaan_pay/widgets/skip_button.dart';

class splashscreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            skipbutton(),
            SizedBox(height: 390.h,
              width: double.infinity,
              child: Image.asset('assets/images/img.png',fit: BoxFit.cover),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: SizedBox(width: 198.w,
                  height: 71.h,
                  //color: Colors.blue,
                  child: RichText(text: TextSpan(
                      style: TextStyle(fontFamily: 'Inter', fontSize: 24.sp),children: [
                    TextSpan(
                        text: 'Get Started \nWith ',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF515151))),
                    TextSpan(text: 'SaanPay',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF5A64BF))),
                  ]))),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:16.0.w),
                child: SizedBox(width: 279.w,
                  height: 22.h,
                  child: splashtext(
                      text: 'Get Rewarded on Every Payment'),
                )
            ),
            Padding(
              padding: EdgeInsets.only(top: 90.h),
              child: elevatedButton(text: 'Next', ontap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return splashscreen2();
                  },));
                  print(MediaQuery.of(context).size.width);
                  print(MediaQuery.of(context).size.height);
              },),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.h),
              child: Center(
                child: SizedBox(height: 3.h,
                  width: 39.w,
                  child: Row(children: [
                    Container(
                      width: 17.w,
                      height: 3.h,
                      decoration: BoxDecoration(
                          color: Color(0xFF5A64BF),
                          borderRadius: BorderRadius.circular(10.0.r)),
                    ),
                    SizedBox(width: 4.w,),
                    Container(
                      width: 7.w,
                      height: 3.h,
                      decoration: BoxDecoration(
                          color: Color(0xFFC7C7C7),
                          borderRadius: BorderRadius.circular(10.0.r)),
                    ),
                    SizedBox(width: 4.w,),
                    Container(
                      width: 7.w,
                      height: 3.h,
                      decoration: BoxDecoration(
                          color: Color(0xFFC7C7C7),
                          borderRadius: BorderRadius.circular(10.0.r)),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


