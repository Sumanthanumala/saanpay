import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaan_pay/widgets/elevatedbutton.dart';
import 'package:scaan_pay/widgets/skip_button.dart';

import '../../widgets/custom_splashtext.dart';
import 'Splasshscreen3.dart';

class splashscreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            skipbutton(),
            SizedBox(height: 347.h,
              width: double.infinity,
              child: Image.asset('assets/images/img_1.png'),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 9.h),
              child:
              SizedBox(width: 145.w,
                  height: 72.h,
                  child:splash_text(text: 'Pay Using QR Code')
                  ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal:16.0.w),
              child: SizedBox(width: 312.w, height: 44.h,
                child: splashtext(
                    text: 'Payment made easy with Quick \nScan & Pay'),
              )
            ),
            Padding(
              padding:  EdgeInsets.only(top: 90.h),
              child: elevatedButton(
                text: 'Next',
                ontap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return splashscreen3();
                    },
                  ));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 54.h),
              child: Center(
                child: SizedBox(height: 3.h,
                  width: 39.w,
                  child: Row(children: [
                    Container(
                      width: 7.w,
                      height: 3.h,
                      decoration: BoxDecoration(
                          color: Color(0xFFC7C7C7),
                          borderRadius: BorderRadius.circular(10.0.r)),
                    ),
                    SizedBox(width: 4.w,),
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
