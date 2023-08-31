import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaan_pay/widgets/custom_appbar2.dart';

import 'wallet/wallet_page.dart';

class menupage extends StatefulWidget {
  @override
  State<menupage> createState() => _menupageState();
}

class _menupageState extends State<menupage> {
  List Items=[
    {"name":"Abhinav","amount":"1202"},
    {"name":"Priya K","amount":"1442"},
    {"name":"Sumanth","amount":"1200"},
    {"name":"Prem","amount":"1500"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(51.h), child: appbar(text: 'Menu')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 11.h,),
              Row(
                children: [
                  Image.asset('assets/images/profile.png',
                      width: 74.w, height: 74.h),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Vishnu',
                          style: TextStyle(
                              fontFamily: "Inter",
                              color: const Color(0xFF252525),
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp)),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Text('UPI ID - rickey786@icici.in',
                              style: TextStyle(
                                  color: const Color(0xFF6F6C6C),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.sp)),
                          SizedBox(width: 5.w),
                          Image.asset(
                            'assets/images/copy.png',
                            width: 13.w,
                            height: 13.h,
                          )
                        ],
                      ),
                      SizedBox(height: 4.h,),
                      Text('My QR Code',
                          style: TextStyle(
                              color: const Color(0xFF6F6C6C),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 12.sp))
                    ],
                  ),
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text('My wallet',
                      style: TextStyle(
                          color: const Color(0xFF252525),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp)),
                  SizedBox(height: 15.h,),
                  Row(
                    children: [
                      Text('\u{20B9}',style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                          color: const Color(0xFF252525))),
                      SizedBox(width: 5.w,),
                      Text('15,000',
                          style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          fontSize: 18.sp,
                          color: const Color(0xFF252525))
                      ),
                    ],
                  )
                ],),
                SizedBox(width: 102.sp,height: 26.h,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return wallet();
                        },));
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5A64BF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.r))),
                      child: Row(children: [
                        Text('Add Money',
                            style: TextStyle(
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 10.sp,
                                color: const Color(0xFFFFFFFF))),
                        SizedBox(width: 5.w,),
                        Text('+',style: TextStyle(
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                            fontSize: 16.sp,
                            color: const Color(0xFFFFFFFF)))
                      ],)
                  ),
                ),

              ],),
              SizedBox(height: 37.h,),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('Pay Money',style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                    color: const Color(0xFF252525))),
                SizedBox(height: 20.h,),
                SizedBox(height: 60.w,width: double.infinity,
                  child: ListView.builder(
                    itemCount: Items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                    return SizedBox(height: 50.h,width: 185.w,
                      child: Card(elevation: 1,
                        child: Padding(
                          padding: const  EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                             Image.asset(
                              ('assets/images/paymoney.png'),
                              width: 30.w,
                              height: 25.77.h,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  SizedBox(height: 15.h,
                                child: Text(Items[index]["name"],
                                    style: TextStyle(
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.sp,
                                        color: const Color(0xFF252525))),
                              ),
                                  SizedBox(width: 41.w,height: 15.h,
                                child: Text(Items[index]["amount"],style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12.sp,
                                    color: const Color(0xFF252525))),
                              ),
                            ],),
                            SizedBox(width: 65.w,height: 21.h,
                                child: ElevatedButton(onPressed: (){},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFF5A64BF)),
                                    child: Text('Pay Now',textAlign: TextAlign.center,
                          style: TextStyle(
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          fontSize: 7.9.sp,
                          color: const Color(0xFFFFFFFF))
                                    ))),
                            ]
                          ),
                        ),
                      ),
                    );
                  },),
                )
              ],),
              SizedBox(height: 8.h,),
              menubar(),
              SizedBox(height: 15.h,),
            ],
          ),
        ),
      ),
    );
  }
  Widget menubar(){
    List Icons_name=[
      {"Image":"assets/images/edit_profile.png","name":"Edit Profile"},
      {"Image":"assets/images/privacy.png","name":"Privacy & Security"},
      {"Image":"assets/images/rewards.png","name":"Offers & Rewards"},
      {"Image":"assets/images/KYC.png","name":"KYC"},
      {"Image":"assets/images/help.png","name":"Help"},
      {"Image":"assets/images/refund.png","name":"Refund Policy"},
      {"Image":"assets/images/terms&conditions.png","name":"Terms & Conditions"},
      {"Image":"assets/images/settings.png","name":"Settings"},
      {"Image":"assets/images/contact_us.png","name":"Contact us"},
      {"Image":"assets/images/about.png","name":"About Us"},
      {"Image":"assets/images/logout.png","name":"LogOut"},
    ];
      return Column(
        children: [
          for(int i=0;i<Icons_name.length;i++)
          InkWell(onTap: () {},
            child: ListTile(
              leading: Image.asset(Icons_name[i]["Image"],
                  width: 20.w,height: 20.h),
              minLeadingWidth: 10.0,
              title: Text(Icons_name[i]["name"],
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                color: const Color(0xFF252525))),
            ),
          ),
        ],
      );
  }
}
