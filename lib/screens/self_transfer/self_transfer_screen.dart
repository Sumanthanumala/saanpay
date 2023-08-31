import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:scaan_pay/widgets/elevatedbutton.dart';

import '../../utils/constants.dart';

var isvalid;
List<banklist> Items = [
  banklist("SBI",
      "https://www.kindpng.com/picc/m/83-837808_sbi-logo-state-bank-of-india-group-png.png"),
  banklist("HDFC",
      "https://w7.pngwing.com/pngs/636/81/png-transparent-hdfc-thumbnail-bank-logos.png"),
  banklist("ICICI",
      "https://i.pinimg.com/originals/ff/d5/31/ffd531a6a78464512a97848e14506738.png"),
  banklist("Bank of America",
      "https://freepngimg.com/save/130845-of-america-official-bank-logo/1692x756")
];


class self_transfer extends StatefulWidget {
  const self_transfer({super.key});

  @override
  State<self_transfer> createState() => _self_transferState();
}

class _self_transferState extends State<self_transfer> {

  final _key=GlobalKey<FormState>();
  final _key1=GlobalKey<FormState>();

  var value;
  var value1;
  @override
  void initstate() {
    super.initState();
    setState(() {
      value = '';
    });
  }
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          foregroundColor: const Color(0xFF252525),
          title: const Text('Self Transfer'),
          centerTitle: true),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: Text(
                'Select bank account to transfer from',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 11.sp,
                    color: const Color(0xFF252525)),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(width: 328.w,height: 80.h,
                  decoration: BoxDecoration(
                      color: const Color(0xFFEAF7FF),
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: const [
                        BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.1))]),
                  child: Form(key: _key,
                    child: DropdownButtonFormField(
                      validator: (value) {
                        if(value==null || value.toString().isEmpty){
                          return 'please select the bank';
                        }
                        return null;
                      },
                      value: value,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF252525)),
                      hint: const Text('Select Bank'),
                      padding: const EdgeInsets.all(8.0),
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      decoration: const InputDecoration(border: InputBorder.none),
                      items: Items.map<DropdownMenuItem<banklist>>(
                              (banklist value) => DropdownMenuItem(
                              value: value,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Image(
                                        image: NetworkImage(value.logo),
                                        fit: BoxFit.contain,
                                      )),
                                  SizedBox(width: 10.w,),
                                  Text(value.bank_name),
                                ],
                              ))).toList(),
                      onChanged: (value) {
                        setState(() {
                          value = value;
                        });
                        print(value);
                      },
                    ),
                  )
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'To',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    fontSize: 14.sp,
                    color: const Color(0xFF252525)),
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: Text(
                'Select Bank account to transfer to',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 11.sp,
                    color: const Color(0xFF252525)),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(width: 328.w,height: 80.h,
                  decoration: BoxDecoration(
                      color: const Color(0xFFEAF7FF),
                      borderRadius: BorderRadius.circular(10.r),
                      boxShadow: const [
                        BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.1))]),
                  child: Form(key: _key1,
                    child: DropdownButtonFormField(
                      validator: (value) {
                        if(value==null || value.toString().isEmpty){
                          return 'please select the bank';
                        }
                        return null;
                      },
                      value: value1,
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF252525)),
                      hint: const Text('Select Bank'),
                      padding: const EdgeInsets.all(8.0),
                      icon: const Icon(Icons.keyboard_arrow_down_outlined),
                      decoration: const InputDecoration(border: InputBorder.none),
                      items: Items.map<DropdownMenuItem<banklist>>(
                              (banklist value) => DropdownMenuItem(
                              value: value,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                      backgroundColor: Colors.white,
                                      child: Image(
                                        image: NetworkImage(value.logo),
                                        fit: BoxFit.contain,
                                      )),
                                  SizedBox(width: 10.w,),
                                  Text(value.bank_name),
                                ],
                              ))).toList(),
                      onChanged: (value) {
                        setState(() {
                          value1 = value;
                        });
                      },
                    ),
                  )
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: addanotheracc(),
            ),
            SizedBox(
              height: 278.h,
            ),
            Align(
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {},
                child: Text(
                  'Select another account for transfer',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF252525),
                      fontSize: 10.sp),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            elevatedButton(
                text: 'Proceed',
                ontap: () {
                  if (_key.currentState!.validate() &&
                      _key1.currentState!.validate()) {
                    Get.toNamed(kamount);
                  }
                })
          ],
        ),
      ),
    );
  }
}


class banklist {
  String bank_name;
  String logo;

  banklist(this.bank_name, this.logo);
}

Widget addanotheracc() {
  return InkWell(
    onTap: () {},
    child: RichText(
        text: TextSpan(children: [
      TextSpan(
          text: 'Add Bank Account ',
          style: TextStyle(
              fontFamily: 'Inter',
              color: const Color(0xFF252525),
              fontWeight: FontWeight.w500,
              fontSize: 14.sp)),
      TextSpan(
          text: '+',
          style: TextStyle(
              fontFamily: 'Inter',
              color: const Color(0xFF252525),
              fontWeight: FontWeight.w500,
              fontSize: 18.sp))
    ])),
  );
}


