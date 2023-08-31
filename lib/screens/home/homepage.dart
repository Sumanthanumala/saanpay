import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scaan_pay/widgets/Banners.dart';
import 'package:scaan_pay/widgets/Offers&Rewards.dart';
import 'package:scaan_pay/widgets/Peoples.dart';
import 'package:scaan_pay/widgets/Recharge.dart';
import 'package:scaan_pay/widgets/Reservations.dart';
import 'package:scaan_pay/widgets/Transfer.dart';
import 'package:scaan_pay/widgets/custom_appbar.dart';
import 'package:scaan_pay/widgets/passbook.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(51.h), child: custom_appbar()),
        body: SingleChildScrollView(
          child: Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                SizedBox(height: 10.h,),
                banner_block(),
                SizedBox(height: 10.h),
                transfer_block(),
                SizedBox(height: 24.h,),
                passbook_block(),
                SizedBox(height: 24.h,),
                recharge_block(),
                SizedBox(height: 24.h,),
                banner_block(),
                SizedBox(height: 24.h,),
                rewards_block(),
                SizedBox(height: 24.h,),
                peoples_block(),
                SizedBox(height: 24.h,),
                reservation_block(),
                SizedBox(height: 35.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
