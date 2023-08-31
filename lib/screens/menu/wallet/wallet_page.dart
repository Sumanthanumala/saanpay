import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaan_pay/screens/menu/wallet/addmoney_page.dart';

class wallet extends StatefulWidget {
  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
          centerTitle: true,foregroundColor:const Color(0xFF252525),
          title: const Text(
            'Saanpay wallet',
          )),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.w),
            child: balance(),
          ),
          SizedBox(
            height: 24.h,
          ),
          wallet_options(),
          SizedBox(
            height: 245.h,
          ),

          // Align(
          //   alignment: Alignment.bottomLeft,
          //     child: SizedBox(width: 101.w,height: 151.h,
          //         child: Image.asset('assets/images/leaf.png')
          //     ),
          // ),
        ],
      ),
    );
  }

  Widget wallet_options() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  // showModalBottomSheet(
                  //   shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(20.r)),
                  //   context: context,
                  //   isScrollControlled: true,
                  //   useSafeArea: true,
                  //   builder: (context) => bottom_card(),
                  // );
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return addtowallet();
                },));
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Stack(children: [
                    Image.asset(
                      'assets/images/Frame1.png',
                      width: 149.w,
                      height: 95.h,
                    ),
                    Positioned(
                        top: 33.h,
                        left: 11.w,
                        child: Image.asset(
                          'assets/images/addmoney.png',
                          width: 30.w,
                          height: 30.h,
                        )),
                    Positioned(
                      top: 31.h,
                      left: 53.w,
                      child: SizedBox(
                        width: 80.w,
                        child: Text(
                          'Add Money to Wallet',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: const Color(0xFF252525)),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
              SizedBox(
                width: 5.h,
              ),
              InkWell(
                onTap: () {},
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/Frame2.png',
                        width: 149.w,
                        height: 95.h,
                      ),
                      Positioned(
                          top: 33.h,
                          left: 11.w,
                          child: Image.asset(
                            'assets/images/sendmoney.png',
                            width: 30.w,
                            height: 30.h,
                          )),
                      Positioned(
                        top: 31.h,
                        left: 53.w,
                        child: SizedBox(
                          width: 90.w,
                          child: Text(
                            'Send Money to Bank',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: const Color(0xFF252525)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {},
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Stack(children: [
                    Image.asset(
                      'assets/images/Frame3.png',
                      width: 149.w,
                      height: 95.h,
                    ),
                    Positioned(
                        top: 33.h,
                        left: 11.w,
                        child: Image.asset(
                          'assets/images/requeststatement.png',
                          width: 30.w,
                          height: 30.h,
                        )),
                    Positioned(
                      top: 31.h,
                      left: 53.w,
                      child: SizedBox(
                        width: 80.w,
                        child: Text(
                          'Request Statement',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 14.sp,
                              color: const Color(0xFF252525)),
                        ),
                      ),
                    )
                  ]),
                ),
              ),
              SizedBox(
                width: 5.h,
              ),
              InkWell(
                onTap: () {},
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/Frame4.png',
                        width: 149.w,
                        height: 95.h,
                      ),
                      Positioned(
                          top: 33.h,
                          left: 11.w,
                          child: Image.asset(
                            'assets/images/wallet_passbook.png',
                            width: 30.w,
                            height: 30.h,
                          )),
                      Positioned(
                        top: 39.h,
                        left: 53.w,
                        child: SizedBox(
                          width: 90.w,
                          child: Text(
                            'Passbook',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: 14.sp,
                                color: const Color(0xFF252525)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

}

Widget balance() {
  return Column(crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(
        height: 11.h,
      ),
      Text(
        'My wallet',
        style: TextStyle(
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
            color: const Color(0xFF4B4B4B)),
      ),
      SizedBox(
        height: 16.h,
      ),
      Row(
        children: [
          Text('\u{20B9}',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w300,
                  fontSize: 24.sp,
                  color: const Color(0xFF252525))),
          SizedBox(
            width: 5.h,
          ),
          Text(
            '15,065',
            style: TextStyle(
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                fontSize: 24.sp,
                color: const Color(0xFF252525)),
          ),
        ],
      ),
    ],
  );
}

