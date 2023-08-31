import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class creditcard_block extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328.w,
      height: 140.h,
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
              "Credit Cards",
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
      {"Image": "assets/images/Credit_card_bills.png",
        "name": "Credit-Card Bills"},
      {"Image": "assets/images/bankaccount.png", "name": "Add Money to Wallet"},
      {"Image": "assets/images/pay_to_bank.png", "name": "Pay to Bank Account"},
    ];
    return Padding(
      padding: EdgeInsets.only(left: 25.w),
      child: SizedBox(width: 247.w,
        height: 78.h,
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
                      width: 45.w,
                    ),onTap: () {},
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    width: 69.w,
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
