import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class recharge_bills_block extends StatelessWidget {
  List Items=[
    {"Image":"assets/images/pre-paid.png","name":"Pre-Paid Recharge"},
    {"Image":"assets/images/post-paid.png","name":"Post-Paid Recharge"},
    {"Image":"assets/images/Electricity_bills.png","name":"Electricity Bills"},
    {"Image":"assets/images/Fastag.png","name":"Fastag"},
    {"Image":"assets/images/Loan_Repayment.png","name":"Loan Repayment"},
    {"Image":"assets/images/Credit_card_bills.png","name":"Credit-Card Bills"},
    {"Image":"assets/images/Google_play_recharge.png","name":"Google Play Recharge"},
    {"Image":"assets/images/DTH.png","name":"DTH"},
    {"Image":"assets/images/landline.png","name":"Landline"},
    {"Image":"assets/images/broadband.png","name":"Broadband"},
    {"Image":"assets/images/cableTV.png","name":"Cable T.V"},
    {"Image":"assets/images/insurance.png","name":"Insurance"},
    {"Image":"assets/images/subscription.png","name":"Subscription"},
    {"Image":"assets/images/LPG.png","name":"LPG Booking"},
    {"Image":"assets/images/waterbill.png","name":"Water Bill"},
    {"Image":"assets/images/schoolfee.png","name":"School Fees"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 428.h,
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
      child: SizedBox(height: 380.h,
        child: GridView.builder(itemCount: Items.length,
          physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 22.w,
              crossAxisSpacing: 4.w,
              crossAxisCount: 4),
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  child: Image.asset(
                    Items[index]["Image"],
                    width: 43.w,height: 38.83.h,
                  ),onTap: () {},
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
