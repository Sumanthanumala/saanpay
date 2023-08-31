import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaan_pay/screens/services/all_services.dart';

class recharge_block extends StatelessWidget {
   recharge_block({super.key});
  List Items=[
    {"Image":"assets/images/pre-paid.png","name":"Pre-Paid Recharge"},
    {"Image":"assets/images/post-paid.png","name":"Post-Paid Recharge"},
    {"Image":"assets/images/Electricity_bills.png","name":"Electricity Bills"},
    {"Image":"assets/images/Fastag.png","name":"Fastag"},
    {"Image":"assets/images/Loan_Repayment.png","name":"Loan Repayment"},
    {"Image":"assets/images/Credit_card_bills.png","name":"Credit-Card Bills"},
    {"Image":"assets/images/Google_play_recharge.png","name":"Google Play Recharge"},
    {"Image":"assets/images/More.png","name":"More"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 239.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color(0xFFEAF7FF),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Padding(
          padding: EdgeInsets.only(top: 10.h,left: 8.w),
          child: Text('Recharge & Bills',
              style: TextStyle(fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp)),
        ),
            SizedBox(height: 19.h),
            recharge(),
      ]),);
  }

  Widget recharge() {

    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 18.w),
      child: SizedBox(height: 180.h,
        child: GridView.builder(itemCount: Items.length,
          physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
            gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 19.w,
                crossAxisSpacing: 4.w,
                crossAxisCount: 4),
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: index<7 ? () {}: () { },
                    child: Image.asset(
                      Items[index]["Image"],
                      width: 43.w,height: 38.83.h,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 69.w,
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
